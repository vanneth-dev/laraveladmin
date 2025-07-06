<?php
/**
 * Copyright (c) 2025 Developer’s Tak Vanneth
 *
 * Released under the MIT License.
 * See the LICENSE file for full details.
 */

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Cache;
use Modules\APIControl\Models\APIClients;
use Modules\APIControl\Models\APIClientsAccess;
use Modules\APIControl\Models\APIUrl;
use Modules\APIControl\Models\APIClientsLimitsAccess;
use Symfony\Component\HttpFoundation\Response;

class ApiKeySecret
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // 1) IP Whitelist
        $allowedIps = config('services.api.allowed_ips', []);
        if (! empty($allowedIps)) {
            $clientIp = $request->ip();
            if (! in_array($clientIp, $allowedIps, true)) {
                Log::channel('api')->warning('Blocked API Request from IP not in whitelist', [
                    'ip'     => $clientIp,
                    'url'    => $request->path(),
                    'method' => $request->method(),
                ]);
                return response()->json(['error' => 'Forbidden - IP not allowed'], 403);
            }
        }

        // 2) Domain Whitelist (optional)
        $allowedDomains = config('services.api.allowed_domains', []);
        if (! empty($allowedDomains)) {
            $origin = $request->headers->get('Origin')
                   ?? $request->headers->get('Referer');
            if ($origin) {
                $host = parse_url($origin, PHP_URL_HOST);
                if ($host && ! in_array($host, $allowedDomains, true)) {
                    Log::channel('api')->warning('Blocked API Request from domain not in whitelist', [
                        'origin' => $origin,
                        'host'   => $host,
                        'url'    => $request->path(),
                        'method' => $request->method(),
                    ]);
                    return response()->json(['error' => 'Forbidden - Domain not allowed'], 403);
                }
            }
        }

        // 3) API Key + Secret Validation
        $clientKey = $request->header('CLIENT-KEY-API');
        $secretKey = $request->header('SECRET-KEY-API');

        $client = APIClients::where('client_key', $clientKey)
            ->where('secret_key', $secretKey)
            ->where('active', 'Y')
            ->whereHas('apiRole', fn($q) => $q->where('active', 'Y'))
            ->first();

        if (! $client) {
            Log::channel('api')->warning('Unauthorized API Request', [
                'client_key' => $clientKey,
                'url'        => $request->path(),
                'method'     => $request->method(),
                'ip'         => $request->ip(),
            ]);
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        // 4) Role-Based URL Access
        $apiRoleId = $client->apiRole->id ?? null;
        $route     = APIUrl::where('url', $request->path())
                           ->where('active', 'Y')
                           ->first();

        $hasAccess = $route
            && APIClientsAccess::where('api_role_id', $apiRoleId)
                               ->where('api_url_id', $route->id)
                               ->exists();

        if (! $hasAccess) {
            Log::channel('api')->warning('Forbidden API Request', [
                'client_id' => $client->id,
                'url'       => $request->path(),
                'method'    => $request->method(),
                'ip'        => $request->ip(),
            ]);
            return response()->json(['error' => 'Forbidden'], 403);
        }

        // 5) Rate Limiting per Client → URL
        $limitRecord = APIClientsLimitsAccess::where('api_role_id', $apiRoleId)
            ->where('api_url_id', $route->id)
            ->first();

        // If no limit configured, skip rate limiting:
        if ($limitRecord && ! is_null($limitRecord->limit)) {
            $cacheKey      = "client_{$client->id}_route_{$route->id}_requests";
            $requestsMade  = Cache::get($cacheKey, 0);
            $expiration    = now()->add(
                $limitRecord->limit_reset_value,
                $limitRecord->limit_reset_unit
            );
            $resetInHuman  = $expiration->diffForHumans(now(), true)
                             . ' from your last request time';

            if ($requestsMade >= $limitRecord->limit) {
                Log::channel('api')->warning('Rate Limit Exceeded', [
                    'client_id'     => $client->id,
                    'url'           => $request->path(),
                    'method'        => $request->method(),
                    'ip'            => $request->ip(),
                    'requests_made' => $requestsMade,
                    'limit'         => $limitRecord->limit,
                    'reset_in'      => $resetInHuman,
                ]);

                return response()->json([
                    'error'          => 'Rate limit exceeded',
                    'limit'          => $limitRecord->limit,
                    'requests_made'  => $requestsMade,
                    'reset_in'       => $resetInHuman,
                ], 429);
            }

            // Increment count
            Cache::put($cacheKey, $requestsMade + 1, $expiration);
        }

        // 6) All checks passed!
        return $next($request);
    }
}

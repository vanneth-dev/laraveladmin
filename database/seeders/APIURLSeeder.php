<?php
/**
 * Copyright (c) 2025 Developer’s Tak Vanneth
 *
 * Released under the MIT License.
 * See the LICENSE file for full details.
 */

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Modules\APIControl\Models\APIClients;
use Modules\APIControl\Models\APIUrl;
use Modules\APIControl\Models\APIClientsAccess;
use Modules\APIControl\Models\APIClientsLimitsAccess;
use Modules\APIControl\Models\APIRole;

class APIURLSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        APIRole::create([
            'name_kh' => 'Admin',
            'name_en' => 'Admin',
            'slug' => 'admin',
            'description' => 'Admin Role',
            'order' => 1,
        ]);

        $client = APIClients::create([
            'name' => 'React App Client',
            'api_role_id' => 1,
            'client_key' => 'yvQVeqSaCgikO79GFogAodqTJMFgOh8WCeWRfNNkm5WTqjGXgm6FlLTyyw5kq34s',
            'secret_key' => 'F62UH3yrI5M4eboWgj774OKjDSaTAW33HjzWh2g9lZDikwwF39sHO6VsTtbd8NTI',
        ]);

        $urls = [
            'api/v1/control',
            'api/v1/get-comments',
            'api/v1/upload-image',
            'api/v1/store-comment'
        ];

        foreach ($urls as $url) {
            $apiUrl = APIUrl::create(['url' => $url]);
            APIClientsAccess::create([
                'api_role_id' => 1,
                'api_url_id' => $apiUrl->id,
            ]);
        }
        // Use insert() for bulk insertion
        APIClientsLimitsAccess::insert([
            [
                'api_role_id' => 1,
                'api_url_id' => 4,
                'limit' => 5,
                'limit_reset_unit' => 'minutes',
                'limit_reset_value' => 1,
            ],
            [
                'api_role_id' => 1,
                'api_url_id' => 2,
                'limit' => 1,
                'limit_reset_unit' => 'seconds',
                'limit_reset_value' => 1,
            ]
        ]);
    }
}

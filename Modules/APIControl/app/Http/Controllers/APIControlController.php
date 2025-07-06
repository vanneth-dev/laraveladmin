<?php
/**
 * Copyright (c) 2025 Developer’s Tak Vanneth
 *
 * Released under the MIT License.
 * See the LICENSE file for full details.
 */

namespace Modules\APIControl\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Modules\APIControl\DataTables\ClientsDataTable;
use Laravel\Passport\Client;
use Illuminate\Support\Str;
use Modules\APIControl\Models\APIClients;
use Modules\APIControl\Models\APIClientsAccess;
use Modules\APIControl\Models\APIUrl;

class APIControlController extends Controller
{
    private $module = 'apicontrol';

    private $module_name = 'api-control';

    private $page_name = 'clients.';

    private $table_name = 'ClientsApi';

    private $load_page;

    private $prefix_route;

    private $data;

    public function __construct()
    {
        $this->load_page = $this->module.'::'.$this->page_name.'.';
        $this->prefix_route = $this->module_name.'.'.$this->page_name;
        $this->data['prefix_route'] = $this->prefix_route;
        $this->data['module'] = $this->module;
        $this->data['page_name'] = $this->page_name;
        $this->data['table_name'] = $this->table_name;
        $this->data['load_page'] = $this->load_page;
    }

    public function __invoke()
    {
        return response()->json(['message' => 'API Control is working']);
    }
    /**
     * Display a listing of the resource.
     */
    public function index(ClientsDataTable $dataTable)
    {
        $data = $this->data;
        return $dataTable->render($this->load_page.'index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $data = $this->data;
        return view($this->load_page.'create', compact('data'));
    }

    /**
     * Store a newly created resource in storage.
     */

     public function store(Request $request)
     {
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'active' => 'required|string|in:Y,N',
            'api_role_id' => 'required|integer|exists:api_role,id',
        ]);
        if ($validator->fails()) {
            notify_error(trans('create_error'), $validator->errors());

            return redirect()->route($this->prefix_route.'create')->withErrors($validator);
        }
        $active = $request->input('active') ?? 'Y';

        DB::beginTransaction();
        try {
            $client_key = Str::random(64);
            $secret_key = Str::random(64);
            $api_client = APIClients::create([
                'name' => $request->input('name'),
                'api_role_id' => $request->input('api_role_id'),
                'client_key' => $client_key,
                'secret_key' => $secret_key,
                'active' => $active,
            ]);
            DB::commit();
            notify_success(trans('create_success'), trans('create_success_message'));

            return redirect()->route($this->prefix_route.($request->input('submit') == 'save' ? 'index' : 'create'));
        } catch (\Exception $e) {
            DB::rollBack();
            notify_error(trans('create_error'), trans('create_error_message'));

            return redirect()->route($this->prefix_route.'index')->withErrors($e->getMessage());
        }
     }
    /**
     * Show the form for editing the specified resource.
     */
    public function edit($field_data)
    {
        $data = $this->data;
        $data['field_data'] = APIClients::find($field_data);
        return view($this->load_page.'edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $field_data)
    {
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'active' => 'required|string|in:Y,N',
            'api_role_id' => 'required|integer|exists:api_role,id',
        ]);
        if ($validator->fails()) {
            notify_error(trans('update_error'), $validator->errors());
            return redirect()->route($this->prefix_route.'edit', $field_data)->withErrors($validator);
        }
        $field_data = APIClients::find($field_data);
        $active = $request->input('active') ?? 'Y';

        DB::beginTransaction();
        try {
            $field_data->update([
                'name' => $request->input('name') ?? $field_data->name,
                'api_role_id' => $request->input('api_role_id') ?? $field_data->api_role_id,
                'client_key' => $field_data->client_key,
                'secret_key' => $field_data->secret_key,
                'active' => $active,
            ]);
            DB::commit();
            notify_success(trans('update_success'), trans('update_success_message'));

            return redirect()->route($this->prefix_route.'index');
        } catch (\Exception $e) {
            DB::rollBack();
            notify_error(trans('update_error'), trans('update_error_message'));

            return redirect()->route($this->prefix_route.'index')->withErrors($e->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($field_data)
    {
        $field_data = APIClients::where('id', $field_data);
        $field_data->delete();
        notify_success(trans('delete_success'), trans('delete_success_message'));

        return redirect()->route($this->prefix_route.'index');
    }

    public function restore($field_data)
    {
        $field_data = APIClients::where('id', $field_data);
        $field_data->restore();
        notify_success(trans('restore_success'), trans('restore_success_message'));

        return redirect()->route($this->prefix_route.'index');
    }
}

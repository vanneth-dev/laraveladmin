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
use Modules\APIControl\DataTables\APIRoleDataTable;
use Modules\APIControl\Models\APIClients;
use Modules\APIControl\Models\APIClientsAccess;
use Modules\APIControl\Models\APIRole;
use Modules\APIControl\Models\APIUrl;

class APIRoleController extends Controller
{
    private $module = 'apicontrol';

    private $module_name = 'api-control';

    private $page_name = 'api-role.';

    private $table_name = 'api_role';

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
    /**
     * Display a listing of the resource.
     */
    public function index(APIRoleDataTable $dataTable)
    {
        $data = $this->data;
        return $dataTable->render($this->load_page.'index', compact('data'));
    }
    function getRoles(Request $request)
    {
        $model = new APIRole();
        if($request->filled('q')){
            $model = $model->where("name_kh", "like", "%{$request->get('q')}%")
                ->orWhere("name_en", "like", "%{$request->get('q')}%");
        }
        $data['results'] = $model->active('Y')->select("id",DB::raw("CONCAT(id ,'-', name_kh) AS text"))->orderBy("name_kh")->get()->toArray();
        $data['pagination'] = false;
        return response()->json($data);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $data = $this->data;
        $data['url'] = APIUrl::select('id', 'url')->where('active', 'Y')->get()->toArray();
        return view($this->load_page.'create', compact('data'));
    }

    /**
     * Store a newly created resource in storage.
     */

     public function store(Request $request)
     {
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'name_en' => 'required|string|max:255|unique:api_role,name_en',
            'name_kh' => 'required|string|max:255',
            'slug' => 'required|string|max:255|unique:api_role,slug',
            'order' => 'nullable|numeric',
            'active' => 'required|string|in:Y,N',

            'url_id' => 'nullable|array',
            'url_id.*' => 'integer|distinct',
        ]);
        if ($validator->fails()) {
            notify_error(trans('create_error'), $validator->errors());

            return redirect()->route($this->prefix_route.'create')->withErrors($validator);
        }
        $active = $request->input('active') ?? 'Y';

        DB::beginTransaction();
        try {
            $api_role = APIRole::create([
                'name_en' => $request->input('name_en') ?? '',
                'name_kh' => $request->input('name_kh') ?? '',
                'slug' => slug($request->input('slug') ?? ''),
                'description' => $request->input('description') ?? '',
                'order' => $request->input('order') ?? 0,
                'active' => $active,
            ]);

            if (! empty($request->input('url_id'))) {
                foreach ($request->input('url_id') as $url_id) {
                   APIClientsAccess::create([
                       'api_role_id' => $api_role->id,
                       'api_url_id' => $url_id,
                   ]);
                }
            }
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
        $data['field_data'] = APIRole::find($field_data);
        $data['url'] = APIUrl::select('id', 'url')->where('active', 'Y')->get()->toArray();
        $data['url_access'] = APIClientsAccess::where('api_role_id', $field_data)
            ->pluck('api_url_id')
            ->toArray();
        return view($this->load_page.'edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $field_data)
    {
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'name_en' => 'required|string|max:255|unique:api_role,name_en,'.$field_data,
            'name_kh' => 'required|string|max:255',
            'slug' => 'required|string|max:255|unique:api_role,slug,'.$field_data,
            'order' => 'nullable|numeric',
            'active' => 'required|string|in:Y,N',

            'url_id' => 'nullable|array',
            'url_id.*' => 'integer|distinct',
        ]);
        if ($validator->fails()) {
            notify_error(trans('update_error'), $validator->errors());

            return redirect()->route($this->prefix_route.'edit', $field_data)->withErrors($validator);
        }
        $field_data = APIRole::find($field_data);
        $active = $request->input('active') ?? 'Y';

        DB::beginTransaction();
        try {
            $field_data->update([
                'name_en' => $request->input('name_en') ?? $field_data->name_en,
                'name_kh' => $request->input('name_kh') ?? $field_data->name_kh,
                'slug' => $request->input('slug') ?? $field_data->slug,
                'description' => $request->input('description') ?? $field_data->description,
                'order' => $request->input('order') ?? $field_data->order,
                'active' => $active,
            ]);

            if (! empty($request->input('url_id'))) {
                APIClientsAccess::where('api_role_id', $field_data->id)->delete();
                foreach ($request->input('url_id') as $url_id) {
                   APIClientsAccess::create([
                       'api_role_id' => $field_data->id,
                       'api_url_id' => $url_id,
                   ]);
                }
            }

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
        $field_data = APIUrl::where('id', $field_data);
        $field_data->delete();
        notify_success(trans('delete_success'), trans('delete_success_message'));

        return redirect()->route($this->prefix_route.'index');
    }

    public function restore($field_data)
    {
        $field_data = APIUrl::where('id', $field_data);
        $field_data->restore();
        notify_success(trans('restore_success'), trans('restore_success_message'));

        return redirect()->route($this->prefix_route.'index');
    }
}

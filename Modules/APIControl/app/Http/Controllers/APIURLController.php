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
use Modules\APIControl\DataTables\URLDataTable;
use Modules\APIControl\Models\APIClients;
use Modules\APIControl\Models\APIClientsAccess;
use Modules\APIControl\Models\APIUrl;

class APIURLController extends Controller
{
    private $module = 'apicontrol';

    private $module_name = 'api-control';

    private $page_name = 'api-url.';

    private $page = 'url';

    private $table_name = 'APIUrl';

    private $load_page;

    private $prefix_route;

    private $data;

    public function __construct()
    {
        $this->load_page = $this->module.'::'.$this->page.'.';
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
    public function index(URLDataTable $dataTable)
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
            'url' => 'required|string|max:255',
            'active' => 'required|string|in:Y,N',
        ]);
        if ($validator->fails()) {
            notify_error(trans('create_error'), $validator->errors());

            return redirect()->route($this->prefix_route.'create')->withErrors($validator);
        }
        $active = $request->input('active') ?? 'Y';

        DB::beginTransaction();
        try {
            APIUrl::create([
                'url' => $request->input('url'),
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
        $data['field_data'] = APIUrl::find($field_data);
        return view($this->load_page.'edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $field_data)
    {
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'url' => 'required|string|max:255',
            'active' => 'required|string|in:Y,N',
        ]);
        if ($validator->fails()) {
            notify_error(trans('update_error'), $validator->errors());

            return redirect()->route($this->prefix_route.'edit', $field_data)->withErrors($validator);
        }
        $field_data = APIUrl::find($field_data);
        $active = $request->input('active') ?? 'Y';

        DB::beginTransaction();
        try {
            $field_data->update([
                'url' => $request->input('url') ?? $field_data->url,
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

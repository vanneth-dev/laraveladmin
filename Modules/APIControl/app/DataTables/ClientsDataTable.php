<?php
/**
 * Copyright (c) 2025 Developer’s Tak Vanneth
 *
 * Released under the MIT License.
 * See the LICENSE file for full details.
 */
namespace Modules\APIControl\DataTables;

use Illuminate\Database\Eloquent\Builder as QueryBuilder;
use Laravel\Passport\Client;
use Modules\APIControl\Models\APIClients;
use Yajra\DataTables\EloquentDataTable;
use Yajra\DataTables\Html\Builder as HtmlBuilder;
use Yajra\DataTables\Html\Column;
use Yajra\DataTables\Services\DataTable;

class ClientsDataTable extends DataTable
{
    private $module = 'apicontrol';

    private $tableName = 'clients_api';

    private $pageName = 'clients';

    /**
     * Build the DataTable class.
     *
     * @param  QueryBuilder  $query  Results from query() method.
     */
    public function dataTable(QueryBuilder $query): EloquentDataTable
    {
        return (new EloquentDataTable($query))
            ->addIndexColumn()
            ->editColumn('api_role_id', function ($table) {
                return $table->apiRole->name_kh ?? $table->api_role_id;
            })
            ->setRowClass(fn ($table) => 'row_reload_'.$table->id)
            ->addColumn('action', fn ($table) => view($this->module.'::'.$this->pageName.'.action', ['table' => $table]))
            ->editColumn('active', function ($table) {
                $active_status = ($table->active == 'Y') ? '<span class="font-weight-bold text-success">'.trans('active_yes').'</span>' : '<span class="text-danger">'.trans('active_no').'</span>';

                return $active_status;
            })
            ->editColumn('client_key', function ($table) {
                return $table->client_key ?
                    '<span id="client" class="copy-btn" data-client="' . $table->client_key . '">' . $table->client_key . '</span>' :
                    '<span class="text-muted">No client available</span>';
            })
            ->editColumn('secret_key', function ($table) {
                return $table->secret_key ?
                    '<span id="secret" class="copy-btn" data-secret="' . $table->secret_key . '">' . $table->secret_key . '</span>' :
                    '<span class="text-muted">No secret available</span>';
            })
            ->rawColumns(['secret_key', 'client_key', 'active']);
    }

    /**
     * Get the query source of dataTable.
     */
    public function query(APIClients $model): QueryBuilder
    {
        $model = $model->newQuery();
        $model->select(['id', 'name', 'api_role_id', 'client_key', 'secret_key', 'active', 'created_at', 'deleted_at']);
        $model->with('apiRole');
        if (request('name')) {
            $model->where(function ($query) {
                $query->orWhere('name', 'like', '%'.request('name').'%')->orWhere('client_key', 'like', '%'.request('name').'%');
            });
        }
        if (request('soft_delete')) {
            // dd(request('soft_delete'));
            if (request('soft_delete') == 'deleted') {
                $model->withTrashed();
                $model->where($this->tableName.'.deleted_at', '!=', null);
            } elseif (request('soft_delete') == 'all_records') {
                $model->withTrashed();
            }
        }
        if (request('active')) {
            $model->where('active', request('active'));
        }

        return $model;
    }
    /**
     * Optional method if you want to use the html builder.
     */
    public function html(): HtmlBuilder
    {
        return $this->builder()
            ->setTableId($this->tableName.'-table')
            ->columns($this->getColumns())
            ->ajax([
                'data' => 'function(d) {
                            d.name = $("#name").val();
                            d.active = $("#active").val();
                            d.soft_delete = $("#soft_delete").val();
                        }',
            ])
            ->parameters([
                'initComplete' => 'function() {
                            $("#filter").submit(function(event) {
                                event.preventDefault();
                                $("#'.$this->tableName.'-table").DataTable().ajax.reload();
                            });
                        }',
            ])
            ->orderBy([2, 'ASC']);
    }

    /**
     * Get the dataTable columns definition.
     */
    public function getColumns(): array
    {
        return [
            Column::computed('action', trans('action'))->exportable(false)->printable(false)->width(50)->addClass('text-center'),
            Column::computed('DT_RowIndex', trans('no.'))->width(50)->addClass('text-center'),
            Column::make('name', 'name')->title(trans('client_api_name')),
            Column::make('api_role_id', 'api_role_id')->title(trans('api_role')),
            Column::make('client_key', 'client_key')->title(trans('client_key')),
            Column::make('secret_key', 'secret_key')->title(trans('secret_key')),
            Column::make('active')->title(trans('active'))->width(10)->addClass('text-center'),
            Column::make('created_at')->title(trans('created_at'))->width(10)->addClass('text-center'),
        ];
    }

    /**
     * Get the filename for export.
     */
    protected function filename(): string
    {
        return $this->tableName.'_'.date('YmdHis');
    }
}

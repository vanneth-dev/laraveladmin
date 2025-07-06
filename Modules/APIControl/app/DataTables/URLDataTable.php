<?php
/**
 * Copyright (c) 2025 Developer’s Tak Vanneth
 *
 * Released under the MIT License.
 * See the LICENSE file for full details.
 */

namespace Modules\APIControl\DataTables;

use App\DataTable\BaseDataTable;
use Illuminate\Database\Eloquent\Builder as QueryBuilder;
use Illuminate\Support\Facades\App;
use Modules\APIControl\Models\APIUrl;
use Modules\Settings\Models\Page;
use Yajra\DataTables\EloquentDataTable;
use Yajra\DataTables\Html\Builder as HtmlBuilder;
use Yajra\DataTables\Html\Column;

class URLDataTable extends BaseDataTable
{
    protected string $module = 'apicontrol';

    protected string $tableName = 'api_urls';

    protected string $pageName = 'url';

    private $locale;

    public function __construct()
    {
        parent::__construct();
        $this->locale = 'name_'.App::getLocale();
    }

    public function dataTable(QueryBuilder $query): EloquentDataTable
    {
        return parent::dataTable($query)
            ->rawColumns(['active']);
    }

    public function query(QueryBuilder $query): QueryBuilder
    {
        $query = APIUrl::query()
            ->softDelete(request('soft_delete'))
            ->active(request('active'));
        if ($name = request('name')) {
            $query->where(fn ($query) => $query->orWhere('name_en', 'like', "%$name%")
                ->orWhere('url', 'like', "%$name%"));
        }
        $query->orderBy('url', 'asc');

        // dd(request('soft_delete'));
        return parent::query($query);
    }

    public function html(): HtmlBuilder
    {
        return parent::html()->ajax([
            'data' => 'function(d) {
                d.name = $("#name").val();
                d.soft_delete = $("#soft_delete").val();
                d.active = $("#active").val();
            }',
        ]);
    }

    public function additionalColumns(): array
    {
        return array_merge(parent::additionalColumns(), [
            Column::make('url', 'url')->title(trans('url')),
        ]);
    }

    protected function filename(): string
    {
        return $this->tableName.'_'.date('YmdHis');
    }
}

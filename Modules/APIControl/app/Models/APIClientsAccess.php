<?php
/**
 * Copyright (c) 2025 Developer’s Tak Vanneth
 *
 * Released under the MIT License.
 * See the LICENSE file for full details.
 */

namespace Modules\APIControl\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Models\Activity;
use Spatie\Activitylog\Traits\LogsActivity;

// use Modules\APIControl\Database\Factories\APIClientsAccessFactory;

class APIClientsAccess extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     */
    protected $table = 'client_api_url_access';

    protected $fillable = [
        'api_url_id',
        'api_role_id',
    ];

    protected static $logFillable = true;

    protected static $logOnlyDirty = true;

    protected static $dontSubmitEmptyLogs = true;

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
            ->useLogName($this->table)
            ->logFillable()
            ->logOnlyDirty()
            ->dontSubmitEmptyLogs();
    }

    public function tapActivity(Activity $activity)
    {
        $activity->default_field = "{$this->client_id} - {$this->api_url_id}";
        $activity->log_name = $this->table;
    }
    // protected static function newFactory(): APIClientsAccessFactory
    // {
    //     // return APIClientsAccessFactory::new();
    // }
}

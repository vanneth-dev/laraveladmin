<?php
/**
 * Copyright (c) 2025 Developer’s Tak Vanneth
 *
 * Released under the MIT License.
 * See the LICENSE file for full details.
 */

namespace Modules\APIControl\Models;

use App\Traits\RecordUser;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Modules\Settings\Models\Traits\ImportScope;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Models\Activity;
use Spatie\Activitylog\Traits\LogsActivity;

// use Modules\APIControl\Database\Factories\APIUrlFactory;

class APIUrl extends Model
{
    use HasFactory, ImportScope, LogsActivity, RecordUser, SoftDeletes;

    /**
     * The attributes that are mass assignable.
     */
    protected $table = 'api_urls';

    protected $fillable = [
        'url',
        'order',
        'active',
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
        $activity->default_field = "{$this->url}";
        $activity->log_name = $this->table;
    }
    // protected static function newFactory(): APIUrlFactory
    // {
    //     // return APIUrlFactory::new();
    // }
}

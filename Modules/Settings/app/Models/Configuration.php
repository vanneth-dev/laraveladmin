<?php
/**
 * Copyright (c) 2025 Developer’s Tak Vanneth
 *
 * Released under the MIT License.
 * See the LICENSE file for full details.
 */

namespace Modules\Settings\Models;

use App\Traits\RecordUser;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Modules\Settings\Models\Traits\ImportScope;
use Modules\Settings\Models\Traits\Relationship;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Models\Activity;
use Spatie\Activitylog\Traits\LogsActivity;

class Configuration extends Model
{
    use HasFactory, ImportScope, LogsActivity, RecordUser, Relationship, SoftDeletes;

    protected $table = 'configurations';

    protected $fillable = [
        'key', 'value', 'is_json', 'created_by', 'updated_by',
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
        $activity->default_field = "{$this->key}";
        $activity->log_name = $this->table;
    }
}

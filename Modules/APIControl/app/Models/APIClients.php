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
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;
use Modules\Settings\Models\Traits\ImportScope;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Models\Activity;
use Spatie\Activitylog\Traits\LogsActivity;

// use Modules\APIControl\Database\Factories\APIClientsFactory;

class APIClients extends Model
{
    use HasFactory, ImportScope, LogsActivity, RecordUser, SoftDeletes;

    /**
     * The attributes that are mass assignable.
     */
    protected $table = 'clients_api';

    protected $fillable = [
        'name',
        'client_key',
        'secret_key',
        'active',
        'api_role_id',
        'deleted_at'
    ];

    public function apiRole(): BelongsTo
    {
        return $this->belongsTo(APIRole::class, 'api_role_id');
    }

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
        $activity->default_field = "{$this->name}";
        $activity->log_name = $this->table;
    }

    // protected static function newFactory(): APIClientsFactory
    // {
    //     // return APIClientsFactory::new();
    // }
}

<?php
/**
 * Copyright (c) 2025 Developer’s Tak Vanneth
 *
 * Released under the MIT License.
 * See the LICENSE file for full details.
 */

namespace Modules\Settings\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Modules\Settings\Models\Traits\ImportScope;
use Modules\Settings\Models\Traits\Relationship;

class UserPermission extends Model
{
    use HasFactory, ImportScope, Relationship;

    protected $table = 'user_permissions';

    protected $fillable = [
        'user_id', 'role_id', 'action_id', 'created_at', 'updated_at',
    ];
}

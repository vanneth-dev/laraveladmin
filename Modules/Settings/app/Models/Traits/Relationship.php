<?php
/**
 * Copyright (c) 2025 Developer’s Tak Vanneth
 *
 * Released under the MIT License.
 * See the LICENSE file for full details.
 */

namespace Modules\Settings\Models\Traits;

use Illuminate\Support\Str;
use Modules\Settings\Models\Module;
use Modules\Settings\Models\Page;
use Modules\Settings\Models\PageAction;
use Modules\Settings\Models\Role;
use Modules\Settings\Models\RolePermission;
use Modules\Settings\Models\User;
use Modules\Settings\Models\UserPermission;

trait Relationship
{
    // User Relationship
    public function role()
    {
        return $this->belongsTo(Role::class);
    }

    // Module Relationships
    public function module()
    {
        return $this->belongsTo(Module::class);
    }

    public function pages()
    {
        return $this->hasMany(Page::class);
    }

    // Page Relationships
    public function page()
    {
        return $this->belongsTo(Page::class);
    }

    public function pageActions()
    {
        return $this->hasMany(PageAction::class);
    }

    public function actionDefault()
    {
        return $this->hasOne(PageAction::class)->where('type', $this->default_action);
    }

    // Role Permissions
    public function rolePermissions()
    {
        return $this->hasMany(RolePermission::class);
    }

    // User Permissions
    public function userPermissions()
    {
        return $this->hasMany(UserPermission::class, 'user_id', 'id');
    }

    // SystemLog Action Model
    public function user()
    {
        return $this->hasOne(User::class, 'id', 'causer_id');
    }

    // // Accessor for avatar URL
    // public function getAvatarUrlAttribute()
    // {
    //     $name = Str::of($this->name)
    //         ->trim()
    //         ->explode(' ')
    //         ->map(fn (string $segment): string => filled($segment) ? mb_substr($segment, 0, 1) : '')
    //         ->join(' ');

    //     $avatarUrl = assetFile(config('setting.disk_name'), $this->image)
    //         ? assetFile(config('setting.disk_name'), $this->image)
    //         : 'https://ui-avatars.com/api/?name='.urlencode($name);

    //     return $avatarUrl;
    // }
}

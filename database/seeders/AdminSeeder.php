<?php
/**
 * Copyright (c) 2025 Developer’s Tak Vanneth
 *
 * Released under the MIT License.
 * See the LICENSE file for full details.
 */

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Modules\Settings\Models\Role;
use Modules\Settings\Models\User;

class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $owner = Role::create([
            'name_en' => 'owner',
            'name_kh' => 'owner',
            'slug' => 'owner',
            'active' => 'Y',
        ])->id;
        User::create([
            'role_id' => $owner,
            'name' => 'owner',
            'username' => 'owner',
            'email' => 'vanneth.dev@gmail.com',
            'phone' => '010296011',
            'password' => Hash::make('123456'),
            'active' => 'Y',
            'avatar' => 'no-avatar.png',
            'locale' => 'en',
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }
}

<?php
/**
 * Copyright (c) 2025 Developer’s Tak Vanneth
 *
 * Released under the MIT License.
 * See the LICENSE file for full details.
 */

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Modules\Settings\Models\Module;
use Modules\Settings\Models\Page;
use Modules\Settings\Models\PageAction;

class TelegramSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $module_telegram = Module::create([
            'name_en' => 'Telegram',
            'name_kh' => 'Telegram',
            'slug' => 'telegram',
            'icon' => 'fab fa-telegram',
            'active' => 'N',
            'order' => 3,
        ])->id;
        $page_telegram = Page::create([
            'module_id' => $module_telegram,
            'name_en' => 'Telegram',
            'name_kh' => 'Telegram',
            'slug' => 'telegram',
            'icon' => 'fab fa-telegram',
            'default_action' => 'index',
            'active' => 'N',
            'order' => 1,
        ])->id;
        $page_action_telegram = PageAction::insert([
            [
                'page_id' => $page_telegram,
                'name_en' => 'telegram',
                'name_kh' => 'telegram',
                'route_name' => 'telegram.index',
                'type' => 'index',
                'position' => null,
                'icon' => 'fab fa-telegram',
                'active' => 'N',
                'is_param' => 'N',
                'params' => null,
            ],
        ]);
    }
}

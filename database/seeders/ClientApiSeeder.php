<?php
/**
 * Copyright (c) 2025 Developer’s Tak Vanneth
 *
 * Released under the MIT License.
 * See the LICENSE file for full details.
 */

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Modules\Settings\Models\Module;
use Modules\Settings\Models\Page;
use Modules\Settings\Models\PageAction;

class ClientApiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Create the API module
        $api_module = Module::create([
            'name_en' => 'API Control',
            'name_kh' => 'API Control',
            'slug' => 'api-control',
            'icon' => 'fas fa-cogs',
            'active' => 'Y',
            'order' => 2,
        ])->id;

        // Create the API page
        $page_api_role = Page::create([
            'module_id' => $api_module,
            'name_en' => 'API Role',
            'name_kh' => 'API Role',
            'slug' => 'api-role',
            'icon' => 'fas fa-user-friends',
            'default_action' => 'index',
            'active' => 'Y',
            'order' => 2,
        ])->id;
        // Dynamic actions array for API passport
        $actions_role = [
            [
                'name_en' => 'API Role',
                'name_kh' => 'API Role',
                'route_name' => 'api-control.api-role.index',
                'type' => 'index',
                'icon' => 'fas fa-user-friends',
                'position' => null,
            ],
            [
                'name_en' => 'Create API Role',
                'name_en' => 'Create API Role',
                'route_name' => 'api-control.api-role.create',
                'type' => 'create',
                'position' => 'top',
                'icon' => 'fas fa-plus-circle',
            ],
            [
                'name_en' => 'Edit API Role',
                'name_en' => 'Edit API Role',
                'route_name' => 'api-control.api-role.edit',
                'type' => 'edit',
                'position' => 'action',
                'icon' => 'fas fa-edit',
            ],
            [
                'name_en' => 'Delete API Role',
                'name_en' => 'Delete API Role',
                'route_name' => 'api-control.api-role.destroy',
                'type' => 'destroy',
                'position' => 'action',
                'icon' => 'fas fa-trash',
            ],
            [
                'name_en' => 'Restore',
                'name_kh' => 'ស្តារ',
                'route_name' => 'api-control.api-role.restore',
                'type' => 'restore',
                'position' => 'action',
                'icon' => 'fas fa-undo',
                'active' => 'Y',
            ],
        ];

        foreach ($actions_role as $action) {
            PageAction::create(array_merge($action, [
                'page_id' => $page_api_role,
                'active' => 'Y',
            ]));
        }
        // Create the API page for Clients
        $page_api_client = Page::create([
            'module_id' => $api_module,
            'name_en' => 'Clients',
            'name_kh' => 'Clients',
            'slug' => 'clients',
            'icon' => 'fas fa-user',
            'default_action' => 'index',
            'active' => 'Y',
            'order' => 1,
        ])->id;

        $actions_client = [
            [
                'name_en' => 'Clients',
                'name_kh' => 'Clients',
                'route_name' => 'api-control.clients.index',
                'type' => 'index',
                'icon' => 'fas fa-user',
                'position' => null,
            ],
            [
                'name_en' => 'Create Client',
                'name_kh' => 'បង្កើតអតិថិជន',
                'route_name' => 'api-control.clients.create',
                'type' => 'create',
                'position' => 'top',
                'icon' => 'fas fa-plus-circle',
            ],
            [
                'name_en' => 'Edit Client',
                'name_kh' => 'កែប្រែអតិថិជន',
                'route_name' => 'api-control.clients.edit',
                'type' => 'edit',
                'position' => 'action',
                'icon' => 'fas fa-edit',
            ],
            [
                'name_en' => 'Regenerate Key',
                'name_kh' => 'បង្កើត key ថ្មី',
                'route_name' => 'api-control.clients.regenerate-key',
                'type' => 'regenerate_key',
                'position' => 'action',
                'icon' => 'fas fa-sync-alt',
            ],
            [
                'name_en' => 'Limit Request',
                'name_kh' => 'Limit Request',
                'route_name' => 'api-control.clients.limit-request',
                'type' => 'limit_request',
                'position' => 'action',
                'icon' => 'fas fa-tachometer-alt',
            ],
            [
                'name_en' => 'Delete Client',
                'name_kh' => 'លុបអតិថិជន',
                'route_name' => 'api-control.clients.destroy',
                'type' => 'destroy',
                'position' => 'action',
                'icon' => 'fas fa-trash',
            ],
            [
                'name_en' => 'Restore',
                'name_kh' => 'ស្តារ',
                'route_name' => 'api-control.clients.restore',
                'type' => 'restore',
                'position' => 'action',
                'icon' => 'fas fa-undo',
                'active' => 'Y',
            ],
        ];

        foreach ($actions_client as $action) {
            PageAction::create(array_merge($action, [
                'page_id' => $page_api_client,
                'active' => 'Y',
            ]));
        }

        // Create the API page for API URL
        $page_api_url = Page::create([
            'module_id' => $api_module,
            'name_en' => 'API URL',
            'name_kh' => 'API URL',
            'slug' => 'api-url',
            'icon' => 'fas fa-link',
            'default_action' => 'index',
            'active' => 'Y',
            'order' => 3,
        ])->id;

        $actions_url = [
            [
                'name_en' => 'API URL',
                'name_kh' => 'API URL',
                'route_name' => 'api-control.api-url.index',
                'type' => 'index',
                'position' => null,
                'icon' => 'fas fa-link',
            ],
            [
                'name_en' => 'Create URL',
                'name_kh' => 'បង្កើត URL',
                'route_name' => 'api-control.api-url.create',
                'type' => 'create',
                'position' => 'top',
                'icon' => 'fas fa-plus',
            ],
            [
                'name_en' => 'Edit URL',
                'name_kh' => 'កែប្រែ URL',
                'route_name' => 'api-control.api-url.edit',
                'type' => 'edit',
                'position' => 'action',
                'icon' => 'fas fa-edit',
            ],
            [
                'name_en' => 'Client Access',
                'name_kh' => 'Client Access',
                'route_name' => 'api-control.api-url.access',
                'type' => 'show',
                'position' => 'action',
                'icon' => 'far fa-eye',
            ],
            [
                'name_en' => 'Delete URL',
                'name_kh' => 'លុប URL',
                'route_name' => 'api-control.api-url.destroy',
                'type' => 'destroy',
                'position' => 'action',
                'icon' => 'fas fa-ban',
            ],
            [
                'name_en' => 'Restore',
                'name_kh' => 'ស្តារ',
                'route_name' => 'api-control.api-url.restore',
                'type' => 'restore',
                'position' => 'action',
                'icon' => 'fas fa-undo',
                'active' => 'Y',
            ],
        ];
        foreach ($actions_url as $action) {
            PageAction::create(array_merge($action, [
                'page_id' => $page_api_url,
                'active' => 'Y',
            ]));
        }
    }
}

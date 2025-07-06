<?php
/**
 * Copyright (c) 2025 Developer’s Tak Vanneth
 *
 * Released under the MIT License.
 * See the LICENSE file for full details.
 */

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call(AdminSeeder::class);
        $this->call(SettingSeeder::class);
        $this->call(TranslationSeeder::class);
        $this->call(ConfigureSeeder::class);
        $this->call(TelegramSeeder::class);
        // api settings
        $this->call(ClientApiSeeder::class);
        $this->call(APIURLSeeder::class);
    }
}

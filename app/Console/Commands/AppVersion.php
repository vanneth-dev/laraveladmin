<?php
/**
 * Copyright (c) 2025 Developer’s Tak Vanneth
 *
 * Released under the MIT License.
 * See the LICENSE file for full details.
 */
namespace App\Console\Commands;

use Illuminate\Console\Command;

class AppVersion extends Command
{
    protected $signature = 'app:version';
    protected $description = 'Display the app version';

    public function handle()
    {
        $this->info('App Version: ' . config('app.version'));
    }
}

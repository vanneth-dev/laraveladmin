<?php
/**
 * Copyright (c) 2025 Developer’s Tak Vanneth
 *
 * Released under the MIT License.
 * See the LICENSE file for full details.
 */

use Illuminate\Support\Facades\Route;
use Modules\Telegram\Http\Controllers\TelegramController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group([], function () {
    Route::resource('telegram', TelegramController::class)->names('telegram');
});

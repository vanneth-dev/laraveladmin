<?php
/**
 * Copyright (c) 2025 Developer’s Tak Vanneth
 *
 * Released under the MIT License.
 * See the LICENSE file for full details.
 */

use Illuminate\Support\Facades\Route;
use Modules\Dashboard\Http\Controllers\DashboardController;

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
Route::get('dashboard', [DashboardController::class, 'index'])->middleware(['auth', 'sidebar'])->name('dashboard.index');
Route::get('dashboard/count', [DashboardController::class, 'count'])->middleware(['auth', 'sidebar'])->name('dashboard.count');


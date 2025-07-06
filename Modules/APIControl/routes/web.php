<?php

use Illuminate\Support\Facades\Route;
use Modules\APIControl\Http\Controllers\APIControlController;
use Modules\APIControl\Http\Controllers\APIRoleController;
use Modules\APIControl\Http\Controllers\APIURLController;

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
Route::middleware(['auth', 'sidebar'])->prefix('api-control')->name('api-control.')->group(function () {
    Route::prefix('clients')->name('clients.')->group(function () {
        Route::get('/', [APIControlController::class, 'index'])->name('index');
        Route::get('create', [APIControlController::class, 'create'])->name('create');
        Route::post('store', [APIControlController::class, 'store'])->name('store');
        Route::get('/edit/{field_data}', [APIControlController::class, 'edit'])->name('edit');
        Route::post('/update/{field_data}', [APIControlController::class, 'update'])->name('update');
        Route::get('/destroy/{field_data}', [APIControlController::class, 'destroy'])->name('destroy');
        Route::get('/restore/{field_data}', [APIControlController::class, 'restore'])->name('restore');
    });
    Route::prefix('api-url')->name('api-url.')->group(function () {
        Route::get('/', [APIURLController::class, 'index'])->name('index');
        Route::get('create', [APIURLController::class, 'create'])->name('create');
        Route::post('store', [APIURLController::class, 'store'])->name('store');
        Route::get('/edit/{field_data}', [APIURLController::class, 'edit'])->name('edit');
        Route::post('/update/{field_data}', [APIURLController::class, 'update'])->name('update');
        Route::get('/destroy/{field_data}', [APIURLController::class, 'destroy'])->name('destroy');
        Route::get('/restore/{field_data}', [APIURLController::class, 'restore'])->name('restore');
    });
    Route::prefix('api-role')->name('api-role.')->group(function () {
        Route::get('/', [APIRoleController::class, 'index'])->name('index');
        Route::get('create', [APIRoleController::class, 'create'])->name('create');
        Route::post('store', [APIRoleController::class, 'store'])->name('store');
        Route::get('/edit/{field_data}', [APIRoleController::class, 'edit'])->name('edit');
        Route::post('/update/{field_data}', [APIRoleController::class, 'update'])->name('update');
        Route::get('/destroy/{field_data}', [APIRoleController::class, 'destroy'])->name('destroy');
        Route::get('/restore/{field_data}', [APIRoleController::class, 'restore'])->name('restore');
    });
});

Route::get('/api/roles', [APIRoleController::class, 'getRoles'])->name('api.roles');

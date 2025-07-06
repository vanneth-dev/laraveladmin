<?php
/**
 * Copyright (c) 2025 Developer’s Tak Vanneth
 *
 * Released under the MIT License.
 * See the LICENSE file for full details.
 */

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('client_api_limits_access', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('api_role_id')->nullable()->index();
            $table->unsignedBigInteger('api_url_id')->index();
            $table->integer('limit')->nullable();
            $table->enum('limit_reset_unit', ['seconds','minutes', 'hours', 'days'])->default('seconds');
            $table->integer('limit_reset_value')->default(1);
            $table->string('active', 10)->default('Y');
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('client_api_url_access');
    }
};

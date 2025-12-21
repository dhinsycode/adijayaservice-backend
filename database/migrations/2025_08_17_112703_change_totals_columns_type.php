<?php

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
        Schema::table('booking_transactions', function (Blueprint $table) {
            //
            $table->bigInteger('sub_total')->change();
            $table->bigInteger('total_amount')->change();
            $table->bigInteger('total_tax_amount')->change();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('booking_transactions', function (Blueprint $table) {
            $table->unsignedTinyInteger('sub_total')->change();
            $table->unsignedTinyInteger('total_amount')->change();
            $table->unsignedTinyInteger('total_tax_amount')->change();
        });
    }
};

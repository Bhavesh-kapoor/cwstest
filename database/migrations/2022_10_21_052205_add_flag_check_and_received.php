<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFlagCheckAndReceived extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('check_and_receiveds', function (Blueprint $table) {
            $table->integer('flag')->default(0)->comment('here 0 is listed and 2 is deleted');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('check_and_receiveds', function (Blueprint $table) {
            //
        });
    }
}

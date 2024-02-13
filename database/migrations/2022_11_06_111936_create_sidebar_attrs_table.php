<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSidebarAttrsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sidebar_attrs', function (Blueprint $table) {
            $table->id();
            $table->string('sidebar_name');
            $table->string('sidebar_slug');
            $table->integer('flag')->default(1)->comment("here 1 is active and 0 is not");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sidebar_attrs');
    }
}

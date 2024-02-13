<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAuthoriseAccessmsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('authorise_accessms', function (Blueprint $table) {
            $table->id();
            $table->integer('user_id');
            $table->integer('sidebar_id');
            $table->integer('can_view')->default(0)->comment("Here 1 is  have access and 0 is not");
            $table->integer('can_edit')->default(0)->comment("Here 1 is  have access and 0 is not");
            $table->integer('can_delete')->default(0)->comment("Here 1 is  have access and 0 is not");
            $table->integer('can_add')->default(0)->comment("Here 1 is  have access and 0 is not");
            $table->integer('can_change_pass')->default(0)->comment("Here 1 is  have access and 0 is not");
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
        Schema::dropIfExists('authorise_accessms');
    }
}

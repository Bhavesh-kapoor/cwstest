<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProducesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('produces', function (Blueprint $table) {
            $table->id();
            $table->integer('product_id');
            $table->integer('quantity');
            $table->integer('production')->default(0)->comment("here 0 it is in too produce face and  1 is in production face");
            $table->integer('process_step_id')->default(0)->comment("Here 0  is that production for the product not start yet");

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
        Schema::dropIfExists('produces');
    }
}

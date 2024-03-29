<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTemporiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tempories', function (Blueprint $table) {
            $table->id();
            $table->string('order_no')->nullable();
            $table->string('product')->nullable();
            $table->string('quantity')->nullable();
            $table->string('buyer_name')->nullable();
            $table->string('sale_price')->nullable();
            $table->string('order_date')->nullable();
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
        Schema::dropIfExists('tempories');
    }
}

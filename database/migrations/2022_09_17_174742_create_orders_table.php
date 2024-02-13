<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->integer('product_id');
            $table->integer('quantity');
            $table->string('order_no');
            $table->string('buyer_name');
            $table->string('sale_price');
            $table->string('date');
            $table->string('status')->default(0)->comment('here   1 is dispactched');
            $table->string('dispatched_date')->nullable();
            $table->string('checked_and_received_date')->nullable();
            $table->string('returned')->default(0)->comment('Here   1 is returned and  0 is not');
            $table->integer('flag')->default(0)->comment("here 0 is active and 1 is deactive and 2 is delete");

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
        Schema::dropIfExists('orders');
    }
}

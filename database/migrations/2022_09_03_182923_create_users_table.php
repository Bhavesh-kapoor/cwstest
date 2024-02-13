<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->string('first_name');
            $table->string('middle_name')->nullable();
            $table->string('last_name')->nullable();
            $table->string('mobile')->nullable();
            $table->string('vip_or_not')->default(0);
            $table->string('dob')->nullable();
            $table->string('age')->nullable();
            $table->string('gender')->nullable();
            $table->string('mother_name')->nullable();
            $table->string('father_name')->nullable();
            $table->string('email')->nullable();
            $table->string('alternate_number')->nullable();
            $table->string('blood_group')->nullable();
            $table->string('image')->nullable();
            $table->string('search_address')->nullable();
            $table->string('house')->nullable();
            $table->string('street')->nullable();
            $table->string('area')->nullable();
            $table->string('country')->nullable();
            $table->string('state')->nullable();
            $table->string('city')->nullable();
            $table->string('pincode')->nullable();
            $table->string('marital_status')->nullable();
            $table->string('payer_type')->nullable();
            $table->string('room_category')->nullable();
            $table->string('room_rent')->nullable();
            $table->string('co_pay')->nullable();
            $table->string('kin_name')->nullable();
            $table->string('kin_number')->nullable();
            $table->string('kin_relationship')->nullable();
            $table->string('remarks')->nullable();
            $table->string('adharcard')->nullable();
            $table->string('pancard')->nullable();
            $table->string('insurance')->nullable();
            $table->string('investigation')->nullable();
            $table->string('others')->nullable();
            $table->string('flag')->default(0);
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
        Schema::dropIfExists('users');
    }
}

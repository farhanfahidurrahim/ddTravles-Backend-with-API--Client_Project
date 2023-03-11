<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRestaurantServicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('restaurant_services', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('rest_id')->nullable();
            $table->string('service_one')->nullable();
            $table->string('service_two')->nullable();
            $table->string('service_three')->nullable();
            $table->string('service_four')->nullable();
            $table->string('service_five')->nullable();
            $table->string('service_six')->nullable();
            $table->foreign('rest_id')->references('id')->on('restaurants')->onDelete('cascade');
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
        Schema::dropIfExists('restaurant_services');
    }
}

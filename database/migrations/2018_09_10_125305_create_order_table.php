<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrderTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order', function (Blueprint $table) {
            $table->increments('id');


            $table->string('short_name',255);//varchar
            $table->string( 'long_name' , 255);//varchar
            $table->string( 'flag' , 255);//varchar
            $table->string( 'link' , 255);//varchar
            $table->string('seo_url' , 255);//varchar

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
        Schema::dropIfExists('order');
    }
}

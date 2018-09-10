<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDealTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('deal', function (Blueprint $table) {
            $table->increments('id');

            $table->string( 'id_bitrix' , 255);
            $table->string( 'deal_status' , 255);
            $table->string( 'deal_number' , 255);
            $table->string( 'deal_title' , 255);
            $table->string( 'from_location' , 255);
            $table->string( 'to_location' , 255);
            $table->integer( 'country_id_from');
            $table->integer( 'country_id_to' );

            $table->string( 'across_location' , 255);
            $table->string( 'delivery_date' , 255);
            $table->string( 'loading_date' , 255);
            $table->string( 'transport_type' , 255);
            $table->string( 'cargo_type' , 255);
            $table->string( 'cargo_weight' , 255);
            $table->string( 'cargo_size' , 255);
            $table->string( 'cargo_amount' , 255);

            $table->string( 'loading_type' , 255);
            $table->string( 'special_conditions' , 255);

            $table->integer( 'manager_id');



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
        Schema::dropIfExists('deal');
    }
}

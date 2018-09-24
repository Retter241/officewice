<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDealsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('deals', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('id_bitrix');
            $table->string('deal_status');
            $table->string('deal_number');
            $table->string('deal_title');
            $table->string('deal_location_across');
            $table->string('deal_delivery_date');
            $table->string('deal_loading_date');
            $table->string('deal_transport_type');
            $table->string('deal_cargo_params');
            $table->string('deal_special_conditions');

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
        Schema::dropIfExists('deals');
    }
}

<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateDealsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('deals', function (Blueprint $table) {
            //
          /*$table->integer('country_location_from')->unsigned()->default(1);
            $table->foreign('country_id')->references('id')->on('countries');

            $table->integer('country_location_to')->unsigned()->default(1);
            $table->foreign('country_id')->references('id')->on('countries');*/
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}

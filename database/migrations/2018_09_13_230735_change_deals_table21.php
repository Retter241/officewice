<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ChangeDealsTable21 extends Migration
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
         $table->integer('country-location-from_id')->unsigned()->default(1);
         $table->foreign('country_link')->references('link')->on('countries');

            $table->integer('country-location-to_id')->unsigned()->default(1);
            $table->foreign('country_link')->references('link')->on('countries');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('deals', function (Blueprint $table) {
            //
        });
    }
}

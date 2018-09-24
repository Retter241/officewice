<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ChangeDealsTable extends Migration
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
          /*  $table->integer('country_id')->unsigned()->default(1);
            $table->foreign('country_id')->references('id')->on('countries');

            $table->integer('manager_id')->unsigned()->default(1);
            $table->foreign('manager_id')->references('id')->on('managers');*/
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

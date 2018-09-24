<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Country;
use App\Deal;
use DB;


class CountryController extends Controller
{
    //

    public function getCountries() {


        $all_countries = DB::table('countries')->get();

        /*foreach ($test as $user) {
            echo $user->id;
        }*/


/*$t = Country::find(1)->deals;
        $deals = Country::find(1)->deals;

        //echo $deals->deal_status;

        echo '<pre>';
        var_dump($t[0]);
        echo '<pre/>';

        foreach ($t as $item) {
            echo $item;
        }

*/

        return view('countries', ['all_countries' => $all_countries , 'test' => array() ]);



    }
}

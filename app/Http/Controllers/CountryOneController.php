<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Country;
use App\Deal;
use DB;

class CountryOneController extends Controller
{
    //

    public function getAllDeals(Request $request) {

        //получаем урл- название страны
        $match  = $end = array_slice(explode('/', $request->url() ), -1)[0];

        //получаем id по названию страны
        $country_id = DB::table('countries')->select('id')->where('full_name',$match)->get();
        $id = $country_id[0]->id;

        //получаем все сделки по стране
        $all_deals = DB::table('deals')->where('country_id', $id)->get();




        return view('country', ['all_deals' => $all_deals , 'req' =>   $id ]);



    }
}

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
        $country_id = DB::table('countries')->select('id')->where('seo_url',$match)->value('id');
        //$id = $country_id->id;
        $id = $country_id;

        $breadcrumbs = DB::table('countries')->select('full_name')->where('seo_url',$match)->value('full_name');
        //получаем все сделки по стране
        //$deals_from = DB::table('deals')->select('*')->where('cou', $id)->get();
        $deals_to = DB::table('deals')->select('*')->where('deal_location_from', $id)->get();
        $deals_from = DB::table('deals')->select('*')->where('deal_location_to', $id)->get();

        //$all_deals = $deals_from . $deals_to;
       

        $all_countries = $this->all_countries;
        //$all_countries = DB::table('countries')->get();


//var_dump($match ,$country_id);


        return view('country', [
            'deals_from' => $deals_from ,
            'deals_to' => $deals_to ,
            'req' =>   $id,
            'all_countries' => $all_countries,
            'breadcrumbs' => $breadcrumbs
        ]);



    }
}

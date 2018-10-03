<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Deal;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
   /* public function __construct()
    {
        $this->middleware('auth');
    }
*/
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $menu = $this->getMenu();

$this->cargoByCountries();





        return view('home' , [
            'all_countries' => $menu
         ]);
    }

    public function getMenu () {
        $all_countries = DB::table('countries')->get();//меню

        return $all_countries;
    }

    public function cargoByCountries () {

        $traffics =  DB::table('deals')
                        ->select('*')
                        ->whereIn('id', [NULL, NULL])
                         ->orWhere(function ($query) {
                                $query->where('deal_location_from', 'LIKE', 15)
                                ->where('deal_location_to', 'LIKE', 1);
                            })
                        ->get();

                   




//select foo from bar where baz in (1,2,3)
//select * from TABLE where field = 1 || 2 || 3

    }
}

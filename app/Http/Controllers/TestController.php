<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use View;
use Html;
use DB;
use App\Country;

class TestController extends Controller
{
    //244
public function index () {

$resp = 'ok';
$mas = [];

$resp = DB::table('countries')->select('id' , 'short_name')->get();

foreach ($resp as $k => $v) {
	//echo  $v->id;
	//echo  $v->short_name . '<br/>';
	//$a = $v->short_name;
/*
$mas['id'][] = $v->id;
$mas['short_name'][] = $v->short_name;
$mas['flag'][] = 'img/flags-normal/'.$v->short_name.'.PNG';
	DB::table('countries')->insert(
    ['flag' => 'img/flags-normal/'.$a.'.PNG']
)->where('id',$v->id);
*/
/*Country::where('id', $v->id)
          ->where('short_name', $v->short_name)
          ->update(['flag' => 'img/flags-normal/'.$v->short_name.'.PNG']);
}*/


	return View::make('test')->with('resp', $resp);
}

}

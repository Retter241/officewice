<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Country;
use App\Deal;
use DB;


class DealController extends Controller
{
    //
    public function getDeal(Request $request) {


        $id = array_slice(explode('/', $request->url() ), -1)[0];

        $deal_info =  DB::table('deals')->where('id' , $id)->get();



        $result  = $deal_info->toArray($deal_info);

        return view('deal' , [
            'deal_info' => $result,
            'test' =>  $id
        ]);
    }
}

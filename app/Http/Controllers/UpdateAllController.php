<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class UpdateAllController extends Controller
{
    //
    public function index ($response_message =array()) {



        return view('update.index')->with('response_message' , $response_message);
    }
}

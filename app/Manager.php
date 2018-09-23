<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Manager extends Model
{
    protected $fillable = ["bitrix_id" , "manager_name" , "manager_phone" , "manager_email"];

    //

    /*public function Deals () {
        return $this->hasMany('App\Deal');
    }*/
}

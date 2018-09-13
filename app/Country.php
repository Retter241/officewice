<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    //
    public function deals()
    {
        return $this->hasMany('App\Deal');
    }

}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    protected $fillable = ['full_name'];
    //
    public function deals()
    {
        return $this->hasMany('App\Deal');
    }

}

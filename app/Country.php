<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    protected $fillable = ['full_name' , 'flag' , 'short_name', 'deals_count'];
    //
    public function deals()
    {
        return $this->hasMany('App\Deal' , 'country_id_from' , 'id');
    }

    

}

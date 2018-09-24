<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Deal extends Model
{
    //
    protected $fillable = ['id_bitrix','deal_status','deal_number','deal_title','deal_location_across',
        'deal_delivery_date','deal_loading_date','deal_location_from' ,
        'deal_location_to', 'deal_transport_type' , 'deal_cargo_params' , 'deal_special_conditions'];


    /*public function user() {
        return $this->belongsTo('App\Country');
    }

    public function category() {
        return $this->belongsTo('Corp\Category');
    }*/

    public function orders()
    {
        return $this->hasMany('App\Order');
    }



    public function country()
    {
        return $this->belongsTo('App\Country');
    }
}

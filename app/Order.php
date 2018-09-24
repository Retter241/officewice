<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    //

    protected $fillable = ['id','deal_name',
        'deal_phone','deal_description','created_at','updated_at','deal_id'
];


    public function deal() {
        return $this->belongsTo('App\Deal');
    }
}

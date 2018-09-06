<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    //
    protected $fillable = [
      'title' , 'path' , 'parent'
    ];

    public function delete () {

        // $this
        self::where('parent',$this->id)->delete();


        return parent::delete($options);
    }
}

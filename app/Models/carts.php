<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class carts extends Model
{
    public $timestamps = false , $with=['housing_unit','apartment'];
    protected $guarded=[];


    public function housing_unit()
    {
        return $this->belongsTo(housing_units::class,'housing_units_id');
    }
    public function apartment()
    {
        return $this->belongsTo(apartments::class,'apartments_id');
    }
    public function order()
    {
        return $this->belongsTo(orders::class,'orders_id');
    }
}

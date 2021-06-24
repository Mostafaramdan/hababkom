<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class currencies extends Model
{
    use HasFactory;
    protected $fillable = ['name_ar','name_en','value_in_dollar','code']
    ;
    public $timestamps=false;

}

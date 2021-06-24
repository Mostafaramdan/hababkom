<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Http\Controllers\Apis\Controllers\index;

class app_settings extends GeneralModel
{
    protected $table = 'app_settings',$appends=['emails','phones'];
    public static function createUpdate($params){
        $record= isset($params["id"])? self::find($params["id"]) :new self();
        $record->about_us_ar = isset($params["about_us_ar"])? $params["about_us_ar"]: $record->about_us_ar;
        $record->about_us_en = isset($params["about_us_en"])? $params["about_us_en"]: $record->about_us_en;
        $record->policy_terms_ar = isset($params["policy_terms_ar"])? $params["policy_terms_ar"]: $record->policy_terms_ar;
        $record->policy_terms_en = isset($params["policy_terms_en"])? $params["policy_terms_en"]: $record->policy_terms_en;
        $record->policy_terms_en = isset($params["policy_terms_en"])? $params["policy_terms_en"]: $record->policy_terms_en;
        $record->privacy_en = isset($params["privacy_en"])? $params["privacy_en"]: $record->privacy_en;
        $record->privacy_en = isset($params["privacy_en"])? $params["privacy_en"]: $record->privacy_en;
        $record->fees = isset($params["fees"])? $params["fees"]: $record->fees;
        $record->save();
        return $record;
    }
    function GetPhonesAttribute()
    {
        return json_decode($this->attributes['phones'],true);
    }
    function GetEmailsAttribute()
    {
        return json_decode($this->attributes['emails'],true);
    }
}

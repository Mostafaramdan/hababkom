<?php
namespace App\Http\Controllers\Apis\Resources;

use App\Http\Controllers\Apis\Helper\helper ;
use  App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Controller;
use App\Models\phones;
use App\Models\emails;
use App\Models\offers;
use App\Models\carts;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Illuminate\Http\Request;

class objects extends index
{
    public static function account ($record)
    {
        if($record == null  ) {return null;}
        $object = [];
        $object['apiToken'] = $record->apiToken;
        $object['phone'] = $record->phone;
        $object['user'] = self::user($record);

        return $object;
    }

    public static function user ($record)
    {
        if($record == null  ) {return null;}
        $object = [];
        $object['id'] = $record->id;
        $object['name'] = $record->name;
        $record->currency ? $object['currency'] = self::currency($record->currency) : null ;
        $record->image?$object['image'] =Request()->root().$record->image:$object['image'] =null;
        $object['email'] = $record->email;
        $object['phone'] = $record->phone;
        $object['lang'] = $record->lang;
        return $object;
    }

    public static function userMin ($record)
    {
        if($record == null  ) {return null;}
        $object = [];
        $object['id'] = $record->id;
        $object['name'] = $record->name;
        $record->image?$object['image'] =Request()->root().$record->image:$object['image'] =null;
        return $object;
    }

    public static function location ($record)
    {
        if($record == null  ) {return null;}
        $object = [];
        $object['id']=$record->id;
        $object['longitude']=$record->longitude;
        $object['latitude']=$record->latitude;
        $object['address']=$record->address;
        $object['description']=$record['description_'.self::$lang];
        return $object;
    }

    public static function notification  ($record){
        // this object take record from notify table ;
        if($record == null  ) {return null;}
        $object['id'] = $record->id;
        $object['type'] = $record->notification->type;
        $object['content']=$record->notification['content_'.self::$lang];
        $record->orders? $object['order'] = self::order($record->orders):false;
        $object['isSeen'] = $record->isSeen == 1 ? true : false ;
        $object['createdAt'] = $record->created_at;
        return $object;
    }
    public static function info ($record)
    {

        $object = [];
        $object['aboutUs']=$record['aboutUs_'.self::$lang];
        $object['policyTerms']=$record['policyTerms_'.self::$lang];
        $object['privacy']=$record['privacy_'.self::$lang];
        $object['emails'] = $record->emails;
        $object['phones'] = $record->phones;
        return $object;
    }


    public static function category ($record)
    {

        $object = [];
        $object['id'] = $record->id;
        $object['name']=$record['name_'.self::$lang];
        $record->image?$object['image'] =Request()->root().$record->image:$object['image'] =null;

        return $object;
    }
    public static function region ($record)
    {

        $object = [];
        $object['id'] = $record->id;
        $object['name'] = $record->{'name_'.self::$lang};
        $record->regions->count()?$object['districts'] = self::ArrayOfObjects($record->regions,'region'):null;
        return $object;
    }
    public static function country ($record)
    {

        $object = [];
        $object['id'] = $record->id;
        $object['name'] = $record->{'name_'.self::$lang};
        !$record->cities ? :$object['cities'] = self::ArrayOfObjects($record->cities,'region');
        return $object;
    }
    public static function currency ($record)
    {
        $object = [];
        $object['id'] = $record->id;
        $object['name'] = $record->{'name_'.self::$lang};
        $object['code'] = $record->code;
        $object['value_in_dollar'] = $record->value_in_dollar;

        return $object;
    }
    public static function image ($record)
    {
        $object = [];
        $object['id'] = $record->id;
        $object['image'] = Str::contains($record->image,'http') ? $record->image :Request()->root().$record->image;
        $object['type'] = $record->type;
        return $object;
    }
    public static function attachment ($record)
    {
        $object = [];
        $object['id'] = $record->id;
        $object['name'] = $record->{'name_'.self::$lang};
        !$record->images->count() ? : $object['image'] = self::image($record->images[0]);
        return $object;
    }
    public static function housing_unit ($record)
    {

        $object = [];
        $object['id'] = $record->id;
        $object['price'] = (double)$record->final_price;
        $object['adultNums'] = (double) $record->adult_nums;
        $object['childrenNums'] = $record->children_nums;
        !$record->images? :$object['images'] = self::ArrayOfObjects($record->images,'image');
        !$record->estate? :$object['estate'] = self::estate($record->estate);
        if ($record->has_offer){
            $object['discount']= $record->has_offer->discount;
            $object['priceAfterDiscount'] = (double) ($record->price - (  $record->price * $record->has_offer->discount/100) ) ;

        }
        return $object;
    }

    public static function estate ($record)
    {
        $object = [];
        $object['id'] = $record->id;
        $object['name'] = $record->{'name_'.self::$lang};
        $object['description'] = $record->{'description_'.self::$lang};
        $object['payment'] = $record->payment;
        !$record->images? :$object['images'] = self::ArrayOfObjects($record->images,'image');
        $object['category'] = self::category($record->category);
        !$record->city ? :$object['city'] = self::region($record->city);
        $object['location'] = self::location($record->location);
        $object['reviewsCount'] = (int)$record->reviews->count();
        $reviews_count= $record->reviews->count()??1;
        $object['totalReview'] = (float) round($record->reviews->sum('rate')/($reviews_count==0?1:$reviews_count),1);
        $object['attachments'] = self::ArrayOfObjects($record->attachments??[],'attachment');
        $object['customersServiceReview'] = (float) round($record->reviews->sum('customersService')/($reviews_count==0?1:$reviews_count),1);
        $object['cardsReview'] = (float) round($record->reviews->sum('cards')/($reviews_count==0?1:$reviews_count),1);
        $object['foodsReview'] = (float) round($record->reviews->sum('foods')/($reviews_count==0?1:$reviews_count),1);


        return $object;
    }
    public static function apartment ($record)
    {
        $object = [];
        $object['id'] = $record->id;
        $object['price'] = (double)$record->final_price;
        $object['rooms'] = $record->rooms;
        $object['kitchens'] = $record->kitchens;
        $object['toilets'] = $record->toilets;
        $object['name'] = $record->{'name_'.self::$lang};
        $object['description'] = $record->{'description_'.self::$lang};
        $object['payment'] = $record->payment;
        !$record->images? :$object['images'] = self::ArrayOfObjects($record->images,'image');
        !$record->category ? :$object['category'] = self::region($record->category);
        !$record->city ? :$object['city'] = self::region($record->city);
        $object['location'] = self::location($record->location);
        $object['reviewsCount'] = (int)$record->reviews->count();
        $reviews_count= $record->reviews->count()??1;
        $object['totalReview'] = (float) round($record->reviews->sum('rate')/($reviews_count==0?1:$reviews_count),1);
        $object['attachments'] = self::ArrayOfObjects($record->attachments??[],'attachment');
        $object['customersServiceReview'] = (float) round($record->reviews->sum('customersService')/($reviews_count==0?1:$reviews_count),1);
        $object['cardsReview'] = (float) round($record->reviews->sum('cards')/($reviews_count==0?1:$reviews_count),1);
        $object['foodsReview'] = (float) round($record->reviews->sum('foods')/($reviews_count==0?1:$reviews_count),1);


        return $object;
    }
    public static function estateMin ($record)
    {
        $object = [];
        $object['id'] = $record->id;
        $object['name'] = $record->{'name_'.self::$lang};
        $object['images'] = self::ArrayOfObjects($record->images,'image');
        $object['location'] = self::location($record->location);
        $object['reviewsCount'] = $record->reviews->count();
        $reviews_count= $record->reviews->count()??1;
        $object['totalReview'] = round($record->reviews->sum('rate')/($reviews_count==0?1:$reviews_count),1);

        return $object;
    }

    public static function offer ($record)
    {
        $object = [];
        $object['id'] = $record->id;
        $offer_type = $record->housing_unit? 'housing_unit' :'apartment';
        if(!$record->{$offer_type})return null;
        $object['name'] = $record->{'name_'.self::$lang};
        $object['description'] = $record->{'description_'.self::$lang};
        $object['discount'] = $record->discount .'%';
        $object['price'] = ($record->discount /100) * $record->{$offer_type}->price;
        $object['normalPrice'] = $record->{$offer_type}->final_price;
        $object['startAt'] = $record->start_at;
        $object['endAt'] = $record->end_at;
        $object['housingUnitId'] = $record->housing_units_id;
        $object['apartmentId'] = $record->apartments_id;
        return $object;
    }
    public static function order ($record)
    {
        $object = [];
        $object['id'] = (double)$record->id;
        $object['code'] = $record->code;
        $object['startAt'] = (double)$record->start_at;
        $object['endAt'] = (double)$record->end_at;
        $object['status'] = $record->status;
        $object['price'] = (double)$record->price;
        $record->voucher ? $object['discount'] = (double)$record->voucher->discount : null ;
        $object['fees'] = $record->fees;
        $object['priceAfterDiscount'] = (double)$record->priceAfterDiscount;
        $object['total'] = (double)$record->total;
        $object['carts']  = self::ArrayOfObjects($record->carts,'cart');
        return $object;
    }
    public static function orderMin ($record)
    {
        $object = [];
        $object['id'] = (double)$record->id;
        $object['startAt'] = (double)$record->start_at;
        $object['endAt'] = (double)$record->end_at;
        $object['status'] = $record->status;
        $object['total'] = (double)$record->total;
        $carts = $record->carts;
        $object['carts'] = self::ArrayOfObjects($record->carts,'cart');

        return $object;
    }
    public static function cart ($record)
    {
        $object = [];
        $object['id'] = (double)$record->id;
        $object['price'] = (double)$record->price;
        !$record->housing_unit ? :$object['housingUnit']  = self::housing_unit($record->housing_unit);
        !$record->apartment ? :$object['apartment']  = self::apartment($record->apartment);

        return $object;
    }

    public static function review ($record)
    {
        $object = [];
        $object['id'] = $record->id;
        $object['user'] = self::userMin($record->user);
        $object['rate'] = $record->rate;
        $object['comment'] = $record->comment;
        return $object;
    }
    public static function voucher ($record)
    {
        $object = [];
        $object['id'] = $record->id;
        $object['discount'] = $record->discount;
        $object['code'] = $record->code;
        $object['startAt'] = strtotime( $record->start_at);
        $object['endAt'] = strtotime($record->end_at);
        return $object;
    }

    public static function ArrayOfObjects ($Items, $objectname)
    {
        if(count($Items)==0) return $Items;
        $Array = [];
        foreach ($Items as $Item) {
            $Item != null && self::$objectname($Item) ? $Array[] = self::$objectname($Item) :null;
        }
        return $Array;
    }
}

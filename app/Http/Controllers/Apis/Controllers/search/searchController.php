<?php
namespace App\Http\Controllers\Apis\Controllers\search;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;
use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;
use App\Models\housing_units;
use Illuminate\Support\Arr;

class searchController extends index
{
    public static  $records;
    public static function api()
    {
        $type = 'App\Models\\'.self::$request->type.'s';
        self::$records=  $type::where('is_active',1);
        self::$request->search?  self::search() :null;//search
        self::$request->categoryId?  self::filterByCategory() :null;// filter by category
        self::$request->price?  self::filterByPrice() :null;// filter by price
        self::$request->rate?  self::filterByRate() :null;// filter by rate
        self::$request->cityId?  self::filterByCity() :null;// filter by city
        self::$request->rooms?  self::filterByRooms() :null;// filter by rooms info
        self::$request->attachmentIds?  self::filterByAttachments() :null;// filter by Attachment
        self::$request->isVisa?  self::filterByIsVisa() :null;// filter by payment = visa
        self::$request->isOffer?  self::filterByIsOffer() :null;// filter by only on offer now
        self::$request->departureDate?  self::filterByIsAvailable() :null;// filter by only is available
         self::sort() ;// sort by and sort type

        $response = self::get();
        return [
            "status"=>$response[1],
            "totalPages"=>$response[0],
            self::$request->type.'s'=>objects::ArrayOfObjects(self::$records,self::$request->type),
        ];
    }

    public static function search()
    {
        $search = self::$request->search;
        if(self::$request->type == 'housing_unit')
            return self::$records->whereHas('estate', function ($query) use ($search) {
                $query->where('name_ar',        'like', '%'.$search.'%')
                    ->orWhere('name_en',       'like', '%'.$search.'%')
                    ->orWhere('description_ar','like', '%'.$search.'%')
                    ->orWhere('description_en','like', '%'.$search.'%');
            });

        else
            return self::$records->where(function ($query) use ($search) {
                $query->where('name_ar',        'like', '%'.$search.'%')
                    ->orWhere('name_en',       'like', '%'.$search.'%')
                    ->orWhere('description_ar','like', '%'.$search.'%')
                    ->orWhere('description_en','like', '%'.$search.'%');
            });
    }

    public static function filterByAttachments()
    {
        $attachmentIds = array_map('intval', self::$request->attachmentIds);
        if(self::$request->type == 'housing_unit')
            return self::$records->whereHas('estate', function ($query) use ($attachmentIds) {
                $query->whereJsonContains('attachments',$attachmentIds );
            });
        else
            return self::$records->whereJsonContains('attachments',$attachmentIds );
    }
    public static function filterByIsVisa()
    {
        if(self::$request->type == 'housing_unit')
            return self::$records->whereHas('estate', function ($query)  {
                $query->where('payment','visa' );
            });
        else
            return self::$records->where('payment','visa' );

    }
    public static function filterByIsOffer()
    {
        return self::$records->whereHas('offers', function ($query)  {
            $currentDate= strtotime(date('Y-m-d'));
            $query->where('start_at','<=', $currentDate )
                  ->where('end_at','>', $currentDate )
                  ->where('is_active',1);
        });
    }
    public static function filterByIsAvailable()
    {
        return  self::$records->whereHas('carts', function ($query)  {
                    $query->whereHas('order',function($query){
                        $query->whereNotBetween('start_at',[ self::$request->arrivalDate,self::$request->departureDate]  )
                            ->whereNotBetween('end_at',[ self::$request->arrivalDate,self::$request->departureDate]  )
                            ->whereNotIn('status',['cancelled','refused']);
                    });
                })->orWhereDoesntHave('carts')
                ;
    }
    public static function filterByRate()
    {
        if(self::$request->type == 'housing_unit')
            return self::$records->whereHas('estate', function ($query)  {
                $query->whereHas('reviews', function ($query)  {
                    $query->Where('rate',self::$request->rate);
                });
            });
        else
            return self::$records->whereHas('reviews', function ($query)  {
                $query->Where('rate',self::$request->rate);
            });

    }
    public static function filterByCity()
    {
        if(self::$request->type == 'housing_unit')
            return self::$records->whereHas('estate', function ($query)  {
                $query->Where('regions_id',self::$request->cityId);
            });
        else
            return self::$records->Where('regions_id',self::$request->cityId);
    }
    public static function filterByRooms()
    {
        $rooms = self::$request->rooms;
        if(self::$request->type == 'housing_unit'){
            $adult_nums= Arr::pluck($rooms,'adultNums');
            $children_nums= Arr::pluck($rooms,'childrenNums');
            return    self::$records->whereIn('adult_nums',$adult_nums)
                            ->whereIn('children_nums',$children_nums);
        }else{
            return  self::$records->where('rooms',self::$request->rooms);
        }
    }

    public static function filterByCategory()
    {
        // if(self::$request->type == 'housing_unit'){
        //     return self::$records->whereHas('estate', function ($query)  {
        //         $query->where('categories_id',self::$request->categoryId);
        //     });
        // }else
        //     return self::$records->where('categories_id',self::$request->categoryId);
    }

    public static function filterByPrice()
    {
        $start= self::$request->price['start'];
        $end= self::$request->price['end'];
        return self::$records->whereBetween('price',[$start,$end]);
    }

    public static function sort()
    {
        if(self::$request->sortBy=='rate')
            if(self::$request->type == 'housing_unit')
                return self::$records->whereHas('estate', function ($query)  {
                    $query->whereHas('reviews', function ($query)  {
                        $query->orderBy('id',self::$request->sortType??"DESC");
                    });
                });
            else
                return self::$records->whereHas('reviews', function ($query)  {
                    $query->orderBy('id',self::$request->sortType??"DESC");
                });
        elseif(self::$request->sortBy=='price')
            return self::$records->orderBy('price', self::$request->sortType??"DESC");
        else
            return self::$records->orderBy('id', 'DESC');

    }

    public static function get()
    {
        $totalPages=ceil(self::$records->count()/self::$itemPerPage);
        self::$records = self::$records->forPage(self::$request->page+1,self::$itemPerPage)->get();
        $status = self::$records->count()?200:204;
        return [$totalPages,$status ];
    }
}

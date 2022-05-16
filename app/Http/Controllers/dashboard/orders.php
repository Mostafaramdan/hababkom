<?php
namespace App\Http\Controllers\dashboard;

use Illuminate\Http\Request;
use App\Models\orders as model;

class orders extends dashboard
{
    function __construct(Request $request)
    {
        $this->model= model::class;
    }
    public function index(Request $request)
    {
        $records= $this->model::query();
        if(self::$admin->estates_id){
            $records->whereHas('carts', function ($query) {
                $query->whereHas('housing_unit',function ($query){
                    $query->where('estates_id',self::$admin->estates_id);
                });
            });
        }
        if(self::$admin->apartments_id){
            $records->whereHas('carts', function ($query) {
                $query->whereHas('apartment',function($q) {
                    return $q->where('apartments_id',self::$admin->apartments_id);
                });
            });
        }
        if($request->status)
            $records->where('status',$request->status);
        if($request->search){
            $records->where('id','like','%'.$request->search.'%')
                    ->orWhere('status','like','%'.$request->search.'%')
                    ->orWhere('id','like','%'.str_replace('20220','',$request->search).'%')
                    ->orWhere(function($q) use ($request){
                        return $q->whereHas("carts",function($q) use ($request){
                            return $q->where(function($q)  use ($request){
                                return $q->whereHas("housing_unit",function($q) use ($request){
                                    return $q->whereHas("estate",function($q) use ($request){
                                        return $q->where(function($q) use ($request){
                                            return $q->where("name_ar",'like','%'.$request->search.'%')
                                                ->orWhere("name_en",'like','%'.$request->search.'%');

                                        })
                                        ->orWhere(function($q) use ($request){
                                            return $q->whereHas('city',function($q) use ($request){
                                                return $q->where("name_ar",'like','%'.$request->search.'%')
                                                    ->orWhere("name_en",'like','%'.$request->search.'%');
                                            });
                                        });
                                    });
                                });
                            })
                            ->orWhere(function($q) use ($request){
                                return $q->whereHas("apartment",function($q) use ($request){
                                    return $q->whereHas("apartments_complex",function($q) use ($request){
                                        return $q->where(function($q) use ($request){
                                            return $q->where("name_ar",'like','%'.$request->search.'%')
                                                ->orWhere("name_en",'like','%'.$request->search.'%');

                                            });
                                        })
                                        ->orWhere(function($q) use ($request){
                                            return $q->whereHas('city',function($q) use ($request){
                                                return $q->where("name_ar",'like','%'.$request->search.'%')
                                                    ->orWhere("name_en",'like','%'.$request->search.'%');
                                            });
                                        });
                                });
                            });
                        });
                    })
                    ;
                    
        }
        $records->orderBy($request->filterBy??'id',$request->filterType??'DESC'); // filter
        if($request->status){
            $records->where('status',$request->status);
        }

        $itemPerPage= $request->itemPerPage??self::$itemPerPage;
        $totalPages= ceil($records->count()/$itemPerPage);
        $records= $records->forPage($request->page,$itemPerPage)->get();
        return response()->json([
            "status"=>$records->count()?200:204,
            "totalPages"=>$totalPages,
            "records"=>$records,
        ]);
    }
    public function show( $id)
    {
        return response()->json(['status'=>200, 'record'=>$this->model::with('carts')->where('id',$id)->first()]);
    }
}

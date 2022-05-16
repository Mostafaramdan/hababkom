<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use App\Models\messages;





Route::view('/dashboard','welcome');
Route::view('/dashboard/{a}','welcome');
Route::view('/dashboard/{a}/{b}','welcome');
Route::view('/dashboard/{a}/{b}/{c}','welcome');
Route::view('/dashboard/{a}/{b}/{c}/{d}','welcome');

route::get('/docs-api',[App\Http\Controllers\Controller::class,'docs']);
route::get('/scrape',[App\Http\Controllers\Controller::class,'scrape']);


Route::get('/',function(){
    return view('website.index');
});
Route::view('/terms_of_use','website.terms_of_use ');
Route::view('/privacy_policy','website.privacy_policy ');

Route::view('/about','website.about');
Route::view('/contact','website.contact')->name('contact');
Route::view('/privacy_policy','website.privacy_policy');


Route::get('/setLang/{lang}',function($lang){
    session()->put('lang', $lang);
    return  back();
})->name('setLang');


Route::post('/contact',function(Request $req){
    messages::create([
       'name'=>$req->name, 
       'email'=>$req->email, 
       'message'=>$req->message, 
       'created_at'=>now()
    ]);
    return redirect(route('contact'))->with('success','تم بنجاح');
})->name('contactForm');

use App\Models\orders;
route::get("/test",function(){
    // $order = orders::first();
    // return $order->carts->first()->estate()->get();
});


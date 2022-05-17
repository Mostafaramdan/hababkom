<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Controllers\testApi\testApiController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::apiResource('/image',App\Http\Controllers\dashboard\uploadImage::class);
Route::post('/uploadimage',[App\Http\Controllers\dashboard\uploadImage::class,'storeFile']);

Route::ANY('/register',[index::class, 'index']);
Route::ANY('/forgetPassword',[index::class, 'index']);
Route::ANY('/validateCode',[index::class, 'index']);
Route::ANY('/resendCode',[index::class, 'index']);
Route::ANY('/updatePassword',[index::class, 'index']);
Route::ANY('/login',[index::class, 'index']);
Route::ANY('/logout',[index::class, 'index']);
Route::ANY('/updateProfile',[index::class, 'index']);
Route::ANY('/unseenNotifications',[index::class, 'index']);
Route::ANY('/notifications',[index::class, 'index']);
Route::ANY('/changePassword',[index::class, 'index']);
Route::ANY('/contactUs',[index::class, 'index']);
Route::ANY('/getRegions',[index::class, 'index']);
Route::ANY('/getCurrencies',[index::class, 'index']);
Route::ANY('/getInfo',[index::class, 'index']);
Route::ANY('/getCategories',[index::class, 'index']);
Route::ANY('/setMyLocation',[index::class, 'index']);
Route::ANY('/getMyLocation',[index::class, 'index']);
Route::ANY('/getOffers',[index::class, 'index']);
Route::ANY('/getCommon',[index::class, 'index']);
Route::ANY('/getRecommended',[index::class, 'index']);
Route::ANY('/getMyLocation',[index::class, 'index']);
Route::ANY('/search',[index::class, 'index']);
Route::ANY('/getHousingUnit',[index::class, 'index']);
Route::ANY('/getAttachments',[index::class, 'index']);
Route::ANY('/changeCurrency',[index::class, 'index']);
Route::ANY('/getNearset',[index::class, 'index']);
Route::ANY('/getReviews',[index::class, 'index']);
Route::ANY('/addReviews',[index::class, 'index']);
Route::ANY('/addVouchers',[index::class, 'index']);
Route::ANY('/addOrder',[index::class, 'index']);
Route::ANY('/getOrders',[index::class, 'index']);
Route::ANY('/getOrderInfo',[index::class, 'index']);
Route::ANY('/getProfile',[index::class, 'index']);
Route::ANY('/updateFireBaseToken',[index::class, 'index']);
Route::ANY('/loginBySocialToken',[index::class, 'index']);
Route::ANY('/registerBySocialToken',[index::class, 'index']);
Route::ANY('/getCountries',[index::class, 'index']);
Route::ANY('/getApartment',[index::class, 'index']);
Route::ANY('/getmeasurementUnits',[index::class, 'index']);
Route::ANY('/changeMeasurementUnit',[index::class, 'index']);
Route::ANY('/cancelOrder',[index::class, 'index']);

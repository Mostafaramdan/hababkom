<?php

use Illuminate\Support\Facades\Route;
Route::get('/permissions/{id}',[App\Http\Controllers\dashboard\dashboard::class, 'permissions']);
Route::post('/permissions/{admin}',[App\Http\Controllers\dashboard\dashboard::class, 'setPermissions']);
Route::ANY('/login',[App\Http\Controllers\dashboard\login::class, 'login']);
Route::ANY('/logout',[App\Http\Controllers\dashboard\login::class, 'logout']);
Route::get('/toggle/{table}/{column}/{id}',[App\Http\Controllers\dashboard\dashboard::class, 'toggle']);
Route::GET('/getAllRecords',[App\Http\Controllers\dashboard\dashboard::class, 'getAllRecords']);
Route::GET('/sms',[App\Http\Controllers\dashboard\users::class, 'sms']);
Route::GET('/sendMail',[App\Http\Controllers\dashboard\users::class, 'sendMail']);
Route::get('/dropdown/{table}/',[App\Http\Controllers\dashboard\dashboard::class, 'dropdown']);

Route::apiResource('users',users::class);
Route::apiResource('housing_units',housing_units::class);
Route::apiResource('attachments',attachments::class);
Route::apiResource('vouchers',vouchers::class);
Route::apiResource('offers',offers::class);
Route::apiResource('currencies',currencies::class);
Route::apiResource('app_settings',app_settings::class);
Route::apiResource('admins',admins::class);
Route::apiResource('regions',regions::class);
Route::apiResource('countries',countries::class);
Route::apiResource('orders',orders::class);
Route::apiResource('contacts',contacts::class);
Route::apiResource('notifications',notifications::class);
Route::apiResource('statistics',statistics::class);
Route::apiResource('estates',estates::class);
Route::apiResource('apartments',apartments::class);

Route::get('/getAllAttachments',[App\Http\Controllers\dashboard\attachments::class, 'getAll']);

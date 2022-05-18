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


Route::get('/backupdb', function () {
    $DbName             = env('DB_DATABASE');
    $get_all_table_query = "SHOW TABLES ";
    $result = DB::select(DB::raw($get_all_table_query));

    $prep = "Tables_in_$DbName";
    foreach ($result as $res){
        $tables[] =  $res->$prep;
    }



    $connect = DB::connection()->getPdo();

    $get_all_table_query = "SHOW TABLES";
    $statement = $connect->prepare($get_all_table_query);
    $statement->execute();
    $result = $statement->fetchAll();


    $output = '';
    foreach($tables as $table)
    {
        $show_table_query = "SHOW CREATE TABLE " . $table . "";
        $statement = $connect->prepare($show_table_query);
        $statement->execute();
        $show_table_result = $statement->fetchAll();

        foreach($show_table_result as $show_table_row)
        {
            $output .= "\n\n" . $show_table_row["Create Table"] . ";\n\n";
        }
        $select_query = "SELECT * FROM " . $table . "";
        $statement = $connect->prepare($select_query);
        $statement->execute();
        $total_row = $statement->rowCount();

        for($count=0; $count<$total_row; $count++)
        {
            $single_result = $statement->fetch(\PDO::FETCH_ASSOC);
            $table_column_array = array_keys($single_result);
            $table_value_array = array_values($single_result);
            $output .= "\nINSERT INTO $table (";
            $output .= "" . implode(", ", $table_column_array) . ") VALUES (";
            $output .= "'" . implode("','", $table_value_array) . "');\n";
        }
    }
    $file_name = env("DB_DATABASE") . '-'.now() . '.sql';
    $file_handle = fopen($file_name, 'w+');
    fwrite($file_handle, $output);
    fclose($file_handle);
    header('Content-Description: File Transfer');
    header('Content-Type: application/octet-stream');
    header('Content-Disposition: attachment; filename=' . basename($file_name));
    header('Content-Transfer-Encoding: binary');
    header('Expires: 0');
    header('Cache-Control: must-revalidate');
    header('Pragma: public');
    header('Content-Length: ' . filesize($file_name));
    ob_clean();
    flush();
    readfile($file_name);
    unlink($file_name);

});
<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Goutte;
use  App\Models\companies;
use App\Jobs\update;

class Controller extends BaseController
{
    public static $itemPerPage=25;
    public static $admin=null;
    public static $data;
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    public static function docs()
    {
        return view('docs',['docs'=>include 'docs/docs.php','resources'=>include 'docs/resources.php']);
    }
}

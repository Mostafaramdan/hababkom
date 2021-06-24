<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Closure;
use App\Models\tokens;
use Illuminate\Support\Str;
use  App\Http\Controllers\dashboard\dashboard as base ;

class dashboard extends Middleware
{
    public function handle($request, Closure $next)
    {
        if(Str::contains($request->url(),'login')){
            return $next($request);
        }
        $token = tokens::where('apiToken',$request->header('Authorization'))->first();
        $admin= $token->admin;
        if($admin && $admin->is_active){
            base::$admin = $admin;
            return $next($request);
        }else
            abort(403);
    }
}

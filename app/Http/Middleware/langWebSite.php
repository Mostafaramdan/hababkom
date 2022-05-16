<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\App;

class langWebSite 
{
    public function handle($request, Closure $next)
    {
        session(['lang' => session('lang')??'ar']);
        App::setLocale(session('lang'));
        return $next($request);
    }
}

<?php

namespace App\Http\Middleware;

use Closure;

class AdminValidate
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {

        if(auth()->check()){
            if(auth()->user()->role_id != 3){
                return abort(403, 'Unauthorized action.');
            }
        }
        return $next($request);
    }
}

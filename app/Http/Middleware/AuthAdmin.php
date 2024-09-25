<?php

namespace App\Http\Middleware;

use App\Models\LoginLogs;
use Closure;
use Illuminate\Http\Request;

class AuthAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        $loginLogs = LoginLogs::where('id_user', session()->get('id_user'))
        ->where('token', session()->get('token'))
        ->where('is_active', 1)->first();
        if(!$loginLogs){
            return redirect()->route('admin.autentikasi.login');
        }else{
            return $next($request);
        }
    }
}

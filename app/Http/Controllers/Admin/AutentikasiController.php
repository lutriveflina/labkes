<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\LoginLogs;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AutentikasiController extends Controller
{
    public function login(){
      
        return view('admin.autentikasi.login');
    }

    public function postLogin(Request $request){
        $validator = Validator::make($request->all(), [
            'email' => 'required|string',
            'password' => 'required|string'
        ]);

        $data = [
            'email' => $request->email,
            'password' => $request->password
        ];

        if($validator->fails()){
            return redirect()->back()->with(array_merge([
                'fail' => $validator->errors()->all()[0],
            ], $data));
        }

        $user = User::where('email', $request->email)->first();
        if(!$user){
            return redirect()->back()->with(array_merge([
                'fail' => 'User dengan email ' . $request->email . ' tidak ditemukan !',
            ], $data));
        }

        if(Hash::check($request->password, $user->password)){
            $token = Crypt::encryptString(date('Y-m-d'));
            LoginLogs::create([
                'id_user' => $user->id,
                'token' => $token,
                'is_active' => 1
                // 'devices' => $_SERVER['HTTP_USER_AGENT']
            ]);

            $request->session()->put('token', $token);
            $request->session()->put('id_user', $user->id);

            return redirect()->route('admin.dashboard');
        }else{
            return redirect()->back()->with(array_merge([
                'fail' => 'Password yang digunakan tidak benar, silahkan coba lagi'
            ], $data));
        }
    }

    public function logout(){
        $loginLogs = LoginLogs::where('id_user', session()->get('id_user'))
        ->where('token', session()->get('token'))->first();
        if($loginLogs){
            $loginLogs->update([
                'is_active' => 0
            ]);
        }

        session()->forget('id_user');
        session()->forget('token');
        return redirect()->route('admin.autentikasi.login');
    }
}

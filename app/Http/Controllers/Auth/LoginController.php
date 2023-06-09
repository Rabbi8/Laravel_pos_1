<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\LoginRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class LoginController extends Controller
{
    
    public function login()
    {
    	$this->data['headline'] = 'Login';

    	return view('login.form', $this->data);
    }



    public function authenticate(LoginRequest $request)
    {
    	$data = $request->only('email', 'password');

    	if (Auth::attempt($data)) {
    		return redirect()->intended('dashboard');
    	} else {
    		return redirect()->route('login')->withErrors(['Invalid username and password']);
    	}
    }


    public function logout()
    {
    	Auth::logout();

		Session::put(['message'=> 'You are successfully logout', 'notification_type'=>"success"]);
    	return redirect()->route('login');
    }

}

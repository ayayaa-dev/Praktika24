<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function signin(){
        return view('signin');
    }
    // authenticate login form
    public function authenticate(Request $request){
        $request->validate([
            'email' => 'required|string|email',
            'password' => 'required|string',
        ]);
        $credentials = $request->only('email', 'password');
        if (Auth::attempt($credentials)){
            // return redirect('dashboard');
            return redirect('/');
        }
        return redirect('signin')->with('error', 'Oops! You entered invalid credentials');
    }
    // logout
    public function signout(){
        Auth::signout();
        return redirect('/');
    }

    public function signup(){
        return view('signup');
    }
}
<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Controller;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Login / Logout
Route::get('/signin', [AuthController::class, 'signin'])->name('signin'); // view login form page
Route::post('/signin', [AuthController::class, 'authenticate']); // authenticate credentials in login form
route::get('/signout', [AuthController::class, 'signout'])->name('signout'); // logout

// Registration
Route::get('/signup', [AuthController::class, 'signup']);
Route::post('/register', [UserController::class, 'register_store']);

Route::get('/', function () {
    return view('welcome');
});

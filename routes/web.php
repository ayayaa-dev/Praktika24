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
Route::get('/login', [AuthController::class, 'login'])->name('login'); // view login form page
Route::post('/login', [AuthController::class, 'authenticate']); // authenticate credentials in login form
route::get('/logout', [AuthController::class, 'logout'])->name('logout'); // logout

// Registration
Route::get('/register', [AuthController::class, 'register']);
Route::post('/signup', [UserController::class, 'register_store']);

Route::get('/', function () {
    return view('welcome');
});

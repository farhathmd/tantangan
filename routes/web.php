<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/about', function () {
    return view('about');
});

Route::get('/aboutnotlogin', function () {
    return view('aboutnotlogin');
});

Route::get('/contact', function () {
    return view('contact');
});

Route::get('/contactnotlogin', function () {
    return view('contactnotlogin');
});

Route::get('/checkout', function () {
    return view('checkout');
});

Route::get('/appointment', 'Appointment@input');

//Route::get('/ourdoctors', function () {
//    return view('doctor');
//});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

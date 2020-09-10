<?php

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
    return 'Initial page with Routes';
})->middleware('auth');

Route::get('/products', 'ProductController@list');

Route::get('/products/show/{id}',
'ProductController@show')->where('id', '[0-9]+');

Route::get('/products/new', 'ProductController@new');
Route::post('/products/added', 'ProductController@added');

Route::get('/products/remove/{id}', 'ProductController@remove');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home')->middleware('auth');

Route::get('/login', 'LoginController@login');


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

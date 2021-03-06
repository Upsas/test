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

// Controllers for people reservations
Route::get('/', 'CustomerController@welcome');
Route::post('/customers', 'CustomerController@index');
Route::post('/customers/{reservation_id}', 'CustomerController@show');
Route::get('/customers/{reservation_id}', 'CustomerController@show');
Route::delete('/customers/{reservation_id}', 'CustomerController@destroy');
Route::post('/reservation-{reservation_id}-show_reservation', 'CustomerController@show_reservation');
Route::delete('/reservation-{reservation_id}-show_reservation', 'CustomerController@destroy');
// Controllers for visit managment
Route::get('/visits', 'VisitController@index');
Route::post('/visits', 'VisitController@store');
Route::get('/visits/all', 'VisitController@show');
Route::delete('/visits/{reservation_id}', 'VisitController@destroy');
Route::put('/visits/{reservation_id}', 'VisitController@update');
Route::post('/visits/{reservation_id}', 'VisitController@active');
// Display screen
Route::get('/display/all', 'DisplayController@index');
// Disabling register
Auth::routes([
    'register' => false,
]);

Route::get('/home', 'HomeController@index')->name('home');

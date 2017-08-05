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

Route::get('/', 'LoginController@index');

Route::get('/dashboard', 'PortalController@dashboard');

Route::get('/store/list-view', 'PortalController@store_lists_view');

Route::get('/store/customer/{store}', 'PortalController@store_costumer_view');

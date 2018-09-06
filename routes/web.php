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
    return view('welcome');
});

Route::get('login' , 'Auth\AuthController@showLoginForm'); //отображение формы -> отправка post
Route::post('login' , 'Auth\AuthController@login'); // для входа ( после отправки формы )
//Route::get('logout' , 'Auth\AuthController@logout');//для выхода
Route::get('logout' , function (){
    Auth::logout();
    return view('welcome');
});//для выхода


//Route::get('reg' , 'Auth\RegisterController');//для регистрации, тестовый режим


//admin
Route::group(['prefix' => 'admin' , 'middleware' => 'auth'] , function(){

	//admin
	Route::get('/' , ['uses' => 'Admin\IndexController@index' , 'as' => 'adminIndex']);
	Route::resource('/layouts' , 'Admin\LayoutsController');
	Route::resource('/settings' , 'Admin\SettingsController');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

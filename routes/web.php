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

//раздел авторизации
Route::get('login' , 'Auth\AuthController@showLoginForm'); //отображение формы -> отправка post
Route::post('login' , 'Auth\AuthController@login'); // для входа ( после отправки формы )
//Route::get('logout' , 'Auth\AuthController@logout');//для выхода
Route::get('logout' , function (){
    Auth::logout();
    return view('welcome');
});//для выхода


//Route::get('reg' , 'Auth\RegisterController');//для регистрации, тестовый режим


//раздел администрирования
Route::group(['prefix' => 'admin' , 'middleware' => 'auth'] , function(){

	//admin
	Route::get('/' , ['uses' => 'Admin\IndexController@index' , 'as' => 'adminIndex']);
	Route::resource('/layouts' , 'Admin\LayoutsController');
	Route::resource('/settings' , 'Admin\SettingsController');
});

Auth::routes();

//главная страница - замена index
Route::get('/home', 'HomeController@index')->name('home');

//страница вывода всех стран ( направлений )
Route::get('/countries', 'CountryController@getCountries')->name('countries');

//вывод одной страны - всех сделок по ней
Route::get('/countries/{country?}', 'CountryOneController@getAllDeals');


//вывод одной сделки - вся информация
Route::get('/deal/{deal_id?}', 'DealController@index')->where('deal_id' , '[\w-]+');



//раздел обновления от битрикса в БД
Route::get('/update', 'UpdateAllController@index');//->name('update');

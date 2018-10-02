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

//главная страница
Route::get('/', 'HomeController@index');

//раздел авторизации
Route::get('login' , 'Auth\AuthController@showLoginForm'); //отображение формы -> отправка post
Route::post('login' , 'Auth\AuthController@login'); // для входа ( после отправки формы )
//Route::get('logout' , 'Auth\AuthController@logout');//для выхода
Route::get('logout' , function (){
    Auth::logout();
    return view('home');
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
Route::get('/deal/{deal_id?}', 'DealController@getDeal')->where('deal_id' , '[\w-]+');



//раздел обновления от битрикса в БД
Route::get('/update', 'UpdateAllController@index');//->name('update');




//тестирование
Route::get('/test', 'TestController@index');//->name('update');

Route::get('/storage/{filename}', function ($filename)
{
    $path = storage_path('public/' . $filename);

    if (!File::exists($path)) {
        abort(404);
    }

    $file = File::get($path);
    $type = File::mimeType($path);

    $response = Response::make($file, 200);
    $response->header("Content-Type", $type);

    return $response;
});

<?php

namespace App\Http\Controllers;

use App\Country as Country;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use View;
use Html;
use DB;
use App\Deal as Deal;


class TestController extends Controller
{

    public function index()
    {

        $resp = 0;
        //$sort = 'ok ';
        $mas = [];
        $counter = [];
       // $notemptycountries = [];



        $mtime = microtime();        //Считываем текущее время
        $mtime = explode(" ",$mtime);    //Разделяем секунды и миллисекунды
// Составляем одно число из секунд и миллисекунд
// и записываем стартовое время в переменную
        $tstart = $mtime[1] + $mtime[0];




        $countriesCounter = DB::table('countries')->select('*')->get();




        foreach ($countriesCounter as $k => $v) {
            $counter['full_name'][] = $v->full_name;
            $counter['link'][] = $v->link;
            $counter['flag'][] = $v->flag;
            $counter['seo_url'][] = $v->seo_url;
            $counter['id'][] = $v->id;
            $counter['count'][] = DB::table('deals')
                ->select('id_bitrix')
                ->where('country_id_from', '=', $v->id)
                ->orWhere('country_id_to', '=', $v->id)
                ->get()->count();
        }

        $res = [];
        foreach ($counter['id'] as $key => $value) {
            foreach ($counter['count'] as $key2 => $value2) {

                if ($key == $key2 and $value2 != ' ') {

                    $res[$value] = 'Кол-во сделок: ' . $value2;

                   /* Country::where('id', $value)
                        ->update(['deals_count' => $value2]);*/
                    $resp++;
                }

            }
        }




        // Делаем все то же самое, чтобы получить текущее время
        $mtime = microtime();
        $mtime = explode(" ",$mtime);
        $mtime = $mtime[1] + $mtime[0];
        $totaltime = ($mtime - $tstart);//Вычисляем разницу
            // Выводим не экран
        $time = "Время выполнения:  {$totaltime} секунд " ;




        echo $time . '<br/>';
        echo 'Кол-во используемых стран : ' . $resp;

        echo '<pre>';
        var_dump($res);
        echo '</pre>';


        return view('test', [
            'resp' => $mas,
            //'sort' => $sort
        ]);
    }

}

<?php

namespace App\Http\Controllers;

use App\Deal;
use App\Country;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB; //фасад

use Carbon\Carbon; //обработка даты

class UpdateAllController extends Controller
{
    ////https://crm.ow.by/rest/113/z2uwj3jxwdebkz46/profile/
    //// https://maps.googleapis.com/maps/api/geocode/json?latlng=40.714224,-73.961452&key=AIzaSyBvt1FlJNvMNFHpvplRmRVnHWJGbwVJIto

    protected $auth = array('access_token' => 'z2uwj3jxwdebkz46', 'domain' => 'crm.ow.by');
    protected $method;
    protected $params;
    protected $i;

    public function index($response_message = array())
    {
      $mtime = microtime();        //Считываем текущее время
$mtime = explode(" ",$mtime);    //Разделяем секунды и миллисекунды
// Составляем одно число из секунд и миллисекунд
// и записываем стартовое время в переменную
$tstart = $mtime[1] + $mtime[0];

        $this->method = 'crm.deal.list';
        $this->params = array("auth" => 'z2uwj3jxwdebkz46', 'order' => array('ID' => 'DESC'));

        $bx_response[] = $this->callB24Method($this->auth, $this->method, $this->params);

        $clear_data = $this->buildData($bx_response);

        if($clear_data){
          DB::delete('delete from deals');
          $db_status = 'Статус : База данных обновлена';
        }


        $response_message = $this->addDataToDb($clear_data);
        // echo Deal::latest()->first()->id_bitrix;
// Делаем все то же самое, чтобы получить текущее время
$mtime = microtime();
$mtime = explode(" ",$mtime);
$mtime = $mtime[1] + $mtime[0];
$totaltime = ($mtime - $tstart);//Вычисляем разницу
// Выводим не экран
$time = "Время выполнения:  {$totaltime} секунд " ;

        return view('update.index')->with([
          'response_message'=> $response_message,
          'db_status' => $db_status,
          'time' => $time
        ]);
    }
    /*
     * init bx api method
     * возвращает черновой массив данных
     */
    public function callB24Method(array $auth, $method, $params)
    {


        $c = curl_init('https://' . $auth['domain'] . '/rest/' . $method . '.json?select[0]=UF_*&select[1]=*');
        //$params["auth"] = $auth["access_token"];
        curl_setopt($c, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($c, CURLOPT_POST, true);
        curl_setopt($c, CURLOPT_HEADER, false);
        curl_setopt($c, CURLOPT_POSTFIELDS, http_build_query($params));

        $response = curl_exec($c);

        $response = json_decode($response, true);

        return $response['result'];
    }

    /*
     * принимает черновой массив
     * формирует массив необходимой нам замены(googleMaps etc)
     * возвращает массив нужных сделок для записи в БД
     * */
    public function buildData(array $bx_response)
    {


        $data = [];
        $pattern = "#^[0]:\s#";

        /*
         * STAGE_ID  NEW -> 1 - в обработке -> 2- проверена страховка перевозчика 3-> получена заявка
         *
         */

        foreach ($bx_response as $item => $list) {
            foreach ($list as $k => $v) {
                $re = preg_match($pattern, $v['TITLE']); // проверка на 0:
                //$v['UF_SH_LOCATION_FROM']) !== NULL and ;
                if ($re and $v['OPENED'] == 'Y' and $v['CLOSED'] == 'N') {

                    //$data[$k] = $v; // All Data for test

                    $locations = $this->parseLocation($v['UF_SH_LOCATION_FROM']);

                    //стадии сделок - после 3й исполнитель выбран - ?
                    $status = '';

                    switch ($v['STAGE_ID']) {
                        case  'NEW':
                            $status .= 'Новая - Да';
                            break;
                        case  1:
                            $status .= 'В оработке';
                            break;
                        case 2:
                            $status .= 'Проверена страховка перевозчика';
                            break;
                        case $v['STAGE_ID'] < 3:
                            $status .= 'Получена заявка';
                            break;
                        default:
                            $status .= 'Счет на предопл. заказчику...{ и дальше нам не надо?}';
                            break;
                    }

                    /* if ($v['STAGE_ID'] === 'NEW') {
                         $status .= 'Новая - Да';
                     } elseif ($v['STAGE_ID'] === 1) {
                         $status .= 'В оработке';
                     } elseif ($v['STAGE_ID'] === 2) {
                         $status .= 'Проверена страховка перевозчика';
                     } elseif ($v['STAGE_ID'] < 3) {
                         $status .= 'Получена заявка';
                     } else {
                         $status .= 'Счет на предопл. заказчику...{ и дальше нам не надо?}';
                     }*/


                    $data[$k]['bitrix_id'] = $v['ID'];
                    $data[$k]['deal_status'] = $status;  //["OPENED"]=> string(1) "Y"
                    //$data[$k]['deal_number'] = $v['TITLE'];
                    $data[$k]['deal_title'] = $v['UF_CRM_D_ITINERARY'];

                    $data[$k]['deal_location_from'] = $this->checkCountry($locations['from'][2]);
                    //$data[$k]['deal_location_from_city'] = $locations['from'][0] . ' (' . $locations['from'][1] . ')';
                    $data[$k]['deal_location_to'] = $this->checkCountry($locations['to'][2]);
                    //$data[$k]['deal_location_to_city'] = $locations['to'][0] . ' (' . $locations['to'][1] . ')';
                    $data[$k]['deal_location_across'] = $locations['across']; //&

                    $data[$k]['deal_delivery_date'] = $this->dateParse($v['UF_CRM_1483628352']);//Срок доставки груза:
                    $data[$k]['deal_loading_date'] = $this->dateParse($v['UF_CRM_1483628167']); //Дата и время подачи транспортного средства:
                    $data[$k]['deal_transport_type'] = $v['UF_CRM_1483673991'];//'{Требования к автотранспорту:} ' . 
                    $data[$k]['deal_cargo_params'] = $v['UF_CRM_1474277632'] . ' - ' . $v['UF_CRM_1467791573'] . ' (обьем или масса)';// $v['UF_CRM_1474277632'] . ' {Обьем (м3) :}' . $v['UF_CRM_1467791573'] . '{ масса брутто ( кг ) :}' . $v['UF_CRM_1467791573']
                    $data[$k]['deal_special_conditions'] =  $v['UF_CRM_1483674041'];//' { Способ погрузки:} ' .

                }
            }
        }

       /* echo '<pre>';
        var_dump($bx_response);
        echo '</pre>';
        echo '<hr/>';
        echo '<pre>';
        var_dump($data);
        echo '</pre>';*/







        return $data;
        //return list of deals
    }

    /*Принимает строку локации
   *(string)L1145.286|AДзержинск=AНижегородская область=AРоссия=56.2440992=43.4351805|BМинск=BМинская область=BБеларусь=53.9045398=27.5615244
   * парсит на состовляющие
   * возвращает массив вида
   * Array ( [from] => Array ( [0] => Дзержинск [1] => Нижегородская область [2] => Россия )
   *         [to] => Array ( [0] => Минск [1] => Минская область [2] => Беларусь ) [across] => )
   * */

    public function parseLocation($source)
    {
        $res = explode('|', $source);
//$res[0] - ненадо

//$res[1] - откуда
         if (array_key_exists('1', $res)) {  $from = explode("=", $res[1]);}
        else{$from[2][] = 'Нет данных';}

        //$from = explode("A=", $res[1]);
        //$from = explode("=", $from[0]);

//$res[2] - куда
          if (array_key_exists('2', $res)) {  $to = explode("=", $res[2]);}
        else{$to[2][] = 'Нет данных';}

        //$to = explode("В=", $res[2]);
       // $to = explode("=", $to[0]);


        foreach ($from as $key => $value) {
            if (!is_numeric($value)) {
                //$B = preg_match('/[A-ZА-Я]{2}/',  $str);
                $location['from'][] = ucfirst(mb_substr($value, 1));
            }
        }
        foreach ($to as $key => $value) {
            if (!is_numeric($value)) {
                //$B = preg_match('/[A-ZА-Я]{2}/',  $str);
                $location['to'][] =ucfirst(mb_substr($value, 1)) ;
            }
        }
        $location['across'] = '';

        return (array)$location;
    }

    protected function dateParse($dateString)
    {
        //$date = array();
        $date = explode('T', $dateString);
        //$date = 'Дата: ' . date( 'd.m.y', strtotime($date[0])) .' | Время: ' . date('H:i', strtotime($date[1]));
        $date['date'] = date('d.m.y', strtotime($date[0]));
        $date['time'] = date('H:i', strtotime($date[1]));
        $result['date'] = $date['date'];
        $result['time'] = $date['time'];

        return (array)$result;
    }

    //DELETE FROM `deals` WHERE deals.id <  170
    /*
     * принимает чистый массив
     * пишет в бд
     * возвращает строку ответа (~время обновления)
     */
    public function addDataToDb($clear_data)
    {
        //$lastDealId = Deal::latest()->first()->id_bitrix;
        
      //$lastDealId = 0;

//$countNewDeals = 0;

   
  

        $rows = array();
        foreach ($clear_data as $k => $v) {
          //$countNewDeals++;
            $rows[$k] = $v;
            $DealId  = Deal::where('id_bitrix', $v['bitrix_id'])->first();
            //if ($v['bitrix_id'] > $lastDealId) {
            if (!$DealId) {

                $from = serialize($v['deal_location_from']);
                $to = serialize($v['deal_location_to']);
                //$from = DB::table('countries')->select('id')->where('full_name' , $v['deal_location_from']);
                //$to = DB::table('countries')->select('id')->where('full_name' , $v['deal_location_to']);


                $deal = new Deal;
                $deal->id_bitrix = $v['bitrix_id'];
                $deal->deal_status = $v['deal_status'];
                $deal->deal_number = $v['bitrix_id'];
                $deal->deal_title = $v['deal_title'];
                $deal->deal_location_across = $v['deal_location_across'];
                $deal->deal_delivery_date = $v['deal_delivery_date']['date'];
                $deal->deal_loading_date = $v['deal_loading_date']['date'];
                $deal->deal_location_from = $this->checkCountry($v['deal_location_from']);
                $deal->deal_location_to = $this->checkCountry($v['deal_location_to']);
                $deal->deal_transport_type = $v['deal_transport_type'];
                $deal->deal_cargo_params = $v['deal_cargo_params'];
                $deal->deal_special_conditions = $v['deal_special_conditions'];
                $deal->save();
                 $response_message = 'Последнее обновление: '.now(); //. ' Новых - '.$countNewDeals;
            }
            else {
              $lastDealUpdate =  Deal::latest()->first()->updated_at;
               $response_message = 'Последнее обновление: '.$lastDealUpdate;
            }


        }

        //$response_message = 'Последнее обновление: '.now();

        return $response_message;
    }
    /*Принимает (string)Страну
     * проверяет на наличия в бд
     * возвращает (int)id
     */
    public function checkCountry ($name) {

        //$id = DB::table('countries')->select('id')->where('full_name','=' , $name)->get();
      /*if(!$id){
          $id = 'test';
          $c = new Country;
          $c->full_name = $name;
          $id  = DB::table('countries')->select('id')->where('full_name' , $name)->get();

      }
*/
      //$id = DB::table('countries')->select('id')->where('full_name','=' , $name)->first();
     //$id->toArray();
     // DB::setFetchMode('FETCH_ASSOC');
      //DB::setFetchMode(PDO::FETCH_ASSOC);
     $id  = DB::table('countries')->select('id')->where('full_name' , $name)->value('id');

     if(!$id){
      $id = $name;
     }
    // $id = (array)$id;
        return $id;
    }



}

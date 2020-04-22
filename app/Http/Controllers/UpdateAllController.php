<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class UpdateAllController extends Controller
{
    ////https://crm.ow.by/rest/113/xx/profile/
    //// https://maps.googleapis.com/maps/api/geocode/json?latlng=57.5888943,34.5686003&key=AIzaSyD4IezL9BaTBFs9Kry-HtJuJOcIZAPIc90

    protected $auth = array('access_token' => 'xxxxxx', 'domain' => 'xxxxx.com');
    protected $method;
    protected $params;
    protected $i;

    public function index($response_message = array())
    {

        $this->method = 'crm.deal.list';
        $this->params = array("auth" => 'xx', 'order' => array('ID' => 'DESC'));

        //$bx_response[] = $this->callB24Method($this->auth, $this->method, $this->params);
        $this->params['select'] = array('ID', 'CLOSED', 'UF_*');
        $this->params['filter'] = array('CLOSED' => 'N');

        $tmp = $this->callB24Method($this->auth, $this->method, $this->params);
        echo '<pre>'.print_r(array(
                $this->auth, $this->method, $this->params
            ,$tmp
            ), true).'</pre>';
        die();
        $build_data = $this->buildData($bx_response);

        $clear_data = $this->processingData($build_data);


        $response_message = $this->addDataToDb($clear_data);


        return view('update.index')->with('response_message', $response_message);
    }


    /*
     * init bx api method
     * возвращает черновой массив данных
     */
    public function callB24Method(array $auth, $method, $params)
    {


        $c = curl_init('https://' . $auth['domain'] . '/rest/' . $method . '.json'); //?select[0]=UF_*
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
     *
     * возвращает чистый массив нужных сделок
     * */
    public function buildData(array $result)
    {


        $data = [];
        foreach ($result as $item => $list) {
            foreach ($list as $k => $v) {
                if (!isset($v['UF_SH_LOCATION_FROM']) !== NULL) {
                    $data[$k] = $v;
                }
            }
        }

        return $data;
        //return list of deals
    }

    /*
     * принимает массив нужных сделок
     * обработка данных массива и
     * формирование необходимой замены(googleMaps etc)
     * возвращает массив для записи в БД
     */

    public function processingData($build_data)
    {
        $clear_data =[];
        foreach ($build_data as $k => $v) {

            if (isset($v['UF_CRM_D_ITINERARY']) !== NULL) {

                //$string = titleParse($v['UF_CRM_D_ITINERARY']);
                //$clear_data['from'] = $string['from'];
            }

        }

        function notes () {
            echo "
              7409   7392-openedY closedN
          Нам надо :
           Сделка :
               откуда -?
               куда -?    ----->['UF_SH_LOCATION_FROM'] = L1112.907|AБрест=AБрестская область=AБеларусь=52.0976214=23.7340503|BТула=BТульская область=BРоссия=54.204836=37.6184915
               через -?
               статус [opened->Y,closed->N,is_new->Y] -?
               вид транспорта -? [\"UF_CRM_1483674091\"]
               V-вид погрузки -[\"UF_CRM_1483674041\"] =  \"верхняя\" или \"боковая, задняя погрузка\" или \"Конвой по РБ\"
               V-вид груза [\"UF_CRM_1474277632\"] = \"кожа выделанная\"
              вес груза -?
              размер груза -?
               обьем груза -?
               V-дата загрузки - ['BEGINDATE'] или  [\"UF_CRM_1483628167\"]-array=> string(25) \"2018-09-12T00:00:00+03:00\"
               специальные пометки [\"UF_CRM_1483673991\"] =\"масса контейнера 14 тонн\" или \"перевозка ж/д\"
         
           Менеджеры:
               name
               phone
               desc
           Страна
               короткое название
               полное название
               флагs
            ";
        }






        $clear_data = $build_data;
        return $clear_data;
    }
    /*
     * принимает чистый массив
     * пишет в бд
     * возвращает строку ответа (~время обновления)
     */
    public function addDataToDb($clear_data)
    {

        /*/
                need fields:
                        ['ID']
                        ['UF_SH_LOCATION_FROM']

        */


        $response_message = $clear_data;

        return $response_message;
    }

    public function titleParse () {

        //$string['from']
        //$string['to']
        $string = '';
        return $string;
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

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

        $this->method = 'crm.deal.list';
        $this->params = array("auth" => 'z2uwj3jxwdebkz46', 'order' => array('ID' => 'DESC'));

        $bx_response[] = $this->callB24Method($this->auth, $this->method, $this->params);

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


        $c = curl_init('https://' . $auth['domain'] . '/rest/' . $method . '.json?select[0]=UF_*');
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
                if ($v['UF_SH_LOCATION_FROM'] !== NULL) {
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

            if ($v['UF_CRM_D_ITINERARY'] !== NULL) {

                //$string = titleParse($v['UF_CRM_D_ITINERARY']);
                //$clear_data['from'] = $string['from'];
            }

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

<?php
/**
 * Created by PhpStorm.
 * User: Retter-241
 * Date: 10.09.2018
 * Time: 14:05
 */

?>
<?  echo $response_message;  ?>

<pre>
 {{-- var_dump($response_message) --}}
</pre>{{--

<!--
<h3 style="width: 100%;">Все активные : opened=Y</h3>
<table>

    <tr>
        <td>Битрикс id</td>
        <td>Статус сделки</td>
        <td>Название</td>
        <td>Откуда</td>
        <td>Куда</td>
        <td>Дата подачи транспорта</td>
        <td>Срок доставки груза</td>

        <td>Требования к авто</td>
        <td>Параметры груза</td>
        <td>Способ погрузки</td>
    </tr>


    @foreach($response_message as $v)
        <tr>
            <td>{{ $v['bitrix_id'] }}</td>
            <td>{{ $v['deal_status'] }}</td>
            <td>{{ $v['deal_title'] }}</td>
            <td>{{ $v['deal_location_from'] }}</td>
            <td>{{ $v['deal_location_to'] }}</td>
            <td>{{ $v['deal_loading_date']['date'] }}</td>
            <td>{{ $v['deal_delivery_date']['date'] }}</td>

            <td>{{ $v['deal_transport_type'] }}</td>
            <td>{{ $v['deal_cargo_params'] }}</td>
            <td>{{ $v['deal_special_conditions'] }}</td>
        </tr>

    @endforeach


</table>-->

--}}

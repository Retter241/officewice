<style>
    tr {
        width: 100%;
    }
    td  , a {
        display: inline-block;
        /*min-height: 75px;*/
        min-width: 125px;
        height: 100%;
        padding: 1px;


    }
</style>

<table>
    <tr>
        <th>Одна сделка </th>
    </tr>

    <tr>
        <td>ID</td>
        <td>Bitrix ID</td>
        <td>deal_status</td>
        <td>deal_number</td>
        <td>deal_title</td>
        <td>country_location_from</td>
        <td>country_location_to</td>
        <td>deal_location_across</td>
        <td>deal_delivery_date</td>
        <td>deal_transport_type</td>
        <td>deal_cargo_params</td>
        <td>deal_special_conditions</td>
    </tr>


    @foreach ($deal_info as $res)
        <tr>
            <td><a href="{{url($res->id )}}">{{ $res->id }}</a></td>
            <td>{{ $res->id_bitrix }}</td>
            <td>{{ $res->deal_status }}</td>
            <td>{{ $res->deal_number }}</td>
            <td>{{ $res->deal_title }}</td>
            <td>{{ $res->country_location_from }}</td>
            <td>{{ $res->country_location_to }}</td>
            <td>{{ $res->deal_location_across }}</td>
            <td>{{ $res->deal_delivery_date }}</td>
            <td>{{ $res->deal_transport_type }}</td>
            <td>{{ $res->deal_cargo_params }}</td>
            <td>{{ $res->deal_special_conditions }}</td>

        </tr>
    @endforeach

</table>



{{--
{{dd($deal_info)}}{{dd($test)}}
<hr>
--}}





@extends('layouts.main')
<h1>TEMPLATE COUNTRY  - 1</h1>

@section('content')

<table>
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


{{--
<th>Все сделки по стране: </th>
@foreach ($all_deals as $deal)
    <tr>
        <td><a href="{{url('deal/'.$deal->id )}}">{{ $deal->id }}</a></td>
        <td>{{ $deal->id_bitrix }}</td>
        <td>{{ $deal->deal_status }}</td>
        <td>{{ $deal->deal_number }}</td>
        <td>{{ $deal->deal_title }}</td>
        <td>{{ $deal->country_location_from }}</td>
        <td>{{ $deal->country_location_to }}</td>
        <td>{{ $deal->deal_location_across }}</td>
        <td>{{ $deal->deal_delivery_date }}</td>
        <td>{{ $deal->deal_transport_type }}</td>
        <td>{{ $deal->deal_cargo_params }}</td>
        <td>{{ $deal->deal_special_conditions }}</td>

    </tr>
    @endforeach

    </table>
<hr>
<br>
<hr>
<table> --}}
<th>Импорт: </th>
@foreach ($deals_from as $deal)
    <tr>
        <td><a href="{{url('deal/'.$deal->id )}}">{{ $deal->id }}</a></td>
        <td>{{ $deal->id_bitrix }}</td>
        <td>{{ $deal->deal_status }}</td>
        <td>{{ $deal->deal_number }}</td>
        <td>{{ $deal->deal_title }}</td>
        <td>{{ $deal->country_location_from }}</td>
        <td>{{ $deal->country_location_to }}</td>
        <td>{{ $deal->deal_location_across }}</td>
        <td>{{ $deal->deal_delivery_date }}</td>
        <td>{{ $deal->deal_transport_type }}</td>
        <td>{{ $deal->deal_cargo_params }}</td>
        <td>{{ $deal->deal_special_conditions }}</td>

    </tr>
    @endforeach

    </table>

<hr>
<br>
<hr>
<table>
    <th>Экспорт: </th>
    @foreach ($deals_to as $deal)
        <tr>
            <td><a href="{{url('deal/'.$deal->id )}}">{{ $deal->id }}</a></td>
            <td>{{ $deal->id_bitrix }}</td>
            <td>{{ $deal->deal_status }}</td>
            <td>{{ $deal->deal_number }}</td>
            <td>{{ $deal->deal_title }}</td>
            <td>{{ $deal->country_location_from }}</td>
            <td>{{ $deal->country_location_to }}</td>
            <td>{{ $deal->deal_location_across }}</td>
            <td>{{ $deal->deal_delivery_date }}</td>
            <td>{{ $deal->deal_transport_type }}</td>
            <td>{{ $deal->deal_cargo_params }}</td>
            <td>{{ $deal->deal_special_conditions }}</td>

        </tr>
    @endforeach

</table>






{{dd($req)}}
{{ $req }}

    {{ dd($all_deals)  }}



@stop
{{-- @endsection --}}
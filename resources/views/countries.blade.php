@extends('layouts.main')
@section('content')
<table>
    <tr>
        <td>ID</td>
        <td>Short Name</td>
        <td>Full Name</td>
        <td>Flag</td>
        <td>Link</td>
        <td>Seo Url</td>
    </tr>


    @foreach ($all_countries as $country)
        <tr>
            <td>{{ $country->id }}</td>
            <td>{{ $country->short_name }}</td>
            <td>{{ $country->full_name }}</td>
            <td>{{ $country->flag }}</td> 
            <td><img src="{{ $country->flag }}"  style="width:50px;height:20px;"></td>
            <td>{{ $country->link }}</td>
            <td><a href="{{ url('countries/'.$country->seo_url) }}">{{ url('countries/'.$country->seo_url) }}</a></td>
</tr>
    @endforeach

</table>

{{-- {{ dd($test) }}
 --}}

@foreach ($test as $t)

      <strong>{{ $t->id }} </strong>
      <strong>{{ $t->deal_title }}</strong>

@endforeach

{{--  {{ dd($all_countries)  }} --}}

@endsection

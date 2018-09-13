<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet" type="text/css">

        <!-- Styles -->
        <style>
            tr {
                width: 100%;
            }
            td  , a {
                display: inline-block;
                min-height: 75px;
                min-width: 150px;
                height: 100%;
            }
        </style>
    <body>


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




    </body>
</html>

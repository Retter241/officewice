<h1>{{ $action_type }}</h1>
<h2>{{ Auth::user()->login }}</h2>


{{--
@section('navigation')
    {!! $navigation !!}
@endsection

--}}


<a href="{{ route('logout') }}"> Выйти </a>
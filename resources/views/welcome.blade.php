@extends('layouts.app')

@section('content')

@auth
<h2 class="text-center">Go view your visits!</h2>
<h4 class="text-center"><a class="text-muted" href="/visits">View Visits</a></h4>
@endauth

@guest

@if(session()->has('message'))
<div class="d-flex align-center justify-content-center">
    <div class="text-center alert alert-danger w-50">
        {{ session()->get('message') }}
    </div>
</div>
@endif
<h1 class="text-center mb-4">Welcome to our reservation system! </h1>
<h1 class="text-center mb-5"> Please check for avaliable time</h1>


<div class='border border-dark p-5 w-25 mx-auto bg-white'>
    <form method="post" action="/customers/">
        @csrf

        <div class="form-group">
            <label for="date">Date</label>
            @error('check_date')
            <div class="d-block text-danger"> {{ $message }} </div>
            @enderror
            <input type="date" class="form-control @error('check_date') is-invalid @enderror" id="date"
                name="check_date" autocomplete="off">
        </div>
        <button class="btn btn-outline-primary">Check</button>

    </form>
    <form action="/customers/0" method="post">
        @csrf
        <div class="mt-3"><button class="btn btn-link">Already have a reservation? Check details</button>
        </div>
    </form>
</div>
@endguest
@endsection
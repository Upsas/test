@extends('layouts.app')

@section('content')

@if ($reservation_id === '0')
<h1 class="text-center">Welcome Back! </h1>
<h3 class="text-center">Check your reservation details</h3>
<div class="text-center d-flex align-center justify-content-center">
    <form class='w-50 form-group' action="/reservation-{{ $reservation_id }}-show_reservation" method="post">
        <h3 class="text-center "><a class="text-muted" href="/">Go back</a></h3>

        <label for="number">Enter your reservation id</label>

        @csrf
        @error('reservation_check')
        <div class="d-block text-danger"> {{ $message }} </div>
        @enderror
        <input class=" @error('reservation_check') is-invalid @enderror form-control w-25 mx-auto" type="number"
            name="reservation_check" id="number" placeholder="Enter your reservation id">
        <button class="mt-2 btn btn-outline-info">Check</button>
    </form>
</div>
@else
<h5 class="text-center">Your reservation id: {{ $reservation_id }}</h5>
<h3 class="text-center">Your reservation details</h3>
<div class="text-center d-flex align-center justify-content-center">
</div>
<table class="table table-hover mx-auto w-50">
    <thead>
        <tr>
            <th scope="col">Date</th>
            <th scope="col">Time left</th>
            <th scope="col">Action</th>
        </tr>
    </thead>
    <tr>

        <td>{{ date('Y-m-d H:i', strtotime($visits->time))  }} </td>
        <td> @php
            $now = Carbon\Carbon::now('Europe/Vilnius');
            date('Y-m-d H:i', strtotime($created = new \Carbon\Carbon($visits->time)));
            echo $created->diff($now)->format('%d day(s), %h hour(s) and %i
            minute(s)');;
            @endphp </td>
        <td class="row">
            <form class="pl-2" action="/customers/{{ $reservation_id }}" method="post">
                @csrf
                @method('delete')
                <button class="btn btn-outline-danger">Cancel</button>
            </form>
        </td>
    </tr>
</table>
@endif

@endsection
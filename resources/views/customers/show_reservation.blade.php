@extends('layouts.app')

@section('content')
<h1 class="text-center">Details for reservation {{ $id }}</h1>
<h3 class="text-center "><a class="text-muted" href="/">Go back</a></h3>
@if (empty($reservation))
<h2 class="text-center">No reservation by this ID </h2>
@else
<table class="table table-hover mx-auto w-50">
    <thead>
        <tr>
            <th scope="col">Date</th>
            <th scope="col">Time left</th>
            <th scope="col">Action</th>
        </tr>
    </thead>
    <tr>

        <td>{{ date('Y-m-d H:i', strtotime($reservation->time))  }} </td>
        <td> @php
            $now = Carbon\Carbon::now('Europe/Vilnius');
            date('Y-m-d H:i', strtotime($created = new \Carbon\Carbon($reservation->time)));
            echo $created->diff($now)->format('%d day(s), %h hour(s) and %i
            minute(s)');;
            @endphp </td>
        <td class="row">
            <form class="pl-2" action="/customers/{{ $reservation->reservation_id }}" method="post">
                @csrf
                @method('delete')
                <button class="btn btn-outline-danger">Cancel</button>
            </form>
        </td>
    </tr>
</table>
@endif

@endsection
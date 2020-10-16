@extends('layouts.app')

@section('content')


<h1 class="text-center my-2">Avaliable times for visits at {{ $time }} </h1>
<h5 class="text-center mb-3"><a class="text-dark" href="/">Go back</a></h5>
<table class="table table-hover mx-auto w-50">
    <thead>
        <tr>
            <th scope="col">Date</th>
            <th scope="col">Action</th>
        </tr>
    </thead>

    @forelse ($visits as $visit)
    <tr>
        <td>{{ $visit->time }} </td>
        <td class="row">
            <form class="pl-2" action="/customers/{{ $visit->reservation_id }}" method="post">
                @csrf
                <button name="submit" class="btn btn-outline-info">Reserve</button>
            </form>
        </td>
    </tr>
    @empty
    <h2 class="text-center">Sorry, no avaliable visits for your selected date</h2>
    @endforelse
</table>

@endsection
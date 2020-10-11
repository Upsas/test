@extends('layouts.app')

@section('content')


<h1 class="text-center">Add avaliable visits </h1>
<div class="form-group d-flex align-center justify-content-center">
    <form action="/visits" method="POST">
        @csrf
        @php
        $reservation_id = range(50,500);
        shuffle($reservation_id)
        @endphp
        <label for="date">Date<small class="d-block">(e.g. 2020-05-20 15:00 )</small></label>
        @error('date')
        <div class="d-block text-danger"> {{ $message }} </div>
        @enderror
        <input class="form-control @error('date') is-invalid @enderror" placeholder="add your avaliable date"
            type="datetime" name="date" id="date"
            value="{{Carbon\Carbon::now()->format('Y-m-d')." ".Carbon\Carbon::now()->format('H:i')}}">

        <input type="hidden" name="id" value="{{ $id }}">
        <input type="hidden" name="reservation_id" value="{{ $reservation_id[0] }}">
        <button class="mt-2  btn btn-outline-primary">Add</button>
    </form>
</div>
<div>
    <h1 class="text-center my-5">Your incoming reserved visits</h1>

    <table class="table table-hover mx-auto w-75">
        <thead>
            <tr>
                <th scope="col">Date</th>
                <th scope="col">Are Reserved</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        @forelse ($visits as $visit)
        <tr>
            <td>{{ $visit->time }} </td>
            <td> {{ $visit->reservation_status === 1 ? 'Yes' : 'No' }}</td>
            <td class="row"> <a class="btn btn-outline-success">Started</a>
                <form class="pl-2" action="" method="post">
                    @csrf
                    <button class="btn btn-outline-secondary">Ended</button>
                </form>
                <form class="pl-2" action="/visits/{{ $visit->reservation_id }}" method="post">
                    @csrf
                    @method('DELETE')
                    <button class="btn btn-outline-danger">Delete</button>

                </form>
            </td>
        </tr>
        @empty
        <h2 class="text-center">No visits found</h2>
        @endforelse
    </table>

</div>

@endsection
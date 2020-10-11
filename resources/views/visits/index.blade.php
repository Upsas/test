@extends('layouts.app')

@section('content')


<div>
    <h1 class="text-center mt-5">Your reserved visits</h1>
    <h4 class="text-center"><a class="mb-2 text-muted" href="/visits/all">Add Visits</a></h4>
    <table class="table table-hover mx-auto w-75">
        <thead>
            <tr>
                <th scope="col">Date</th>
                <th scope="col">Are Reserved</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        {{ session()->get('active') }}
        @php

        @endphp
        @forelse ($visits as $visit)
        @php
        $arr[] = ($visit->active);

        @endphp
        <tr class="{{  ($visit->active === 1) ? "bg-warning" : ''  }}">
            <td>{{ $visit->time }} </td>
            <td> {{ $visit->reservation_status === 1 ? 'Yes' : 'No' }}</td>
            <td class="row ">
                <form action="/visits/{{ $visit->reservation_id }}" method="post">
                    @csrf
                    <button class="btn btn-outline-success">Started</button>
                </form>
                <form class="pl-2" action="/visits/{{ $visit->reservation_id }}" method="post">
                    @csrf
                    @method('DELETE')
                    <button class="btn btn-outline-secondary">Ended</button>
                </form>
                <form class="pl-2" action="/visits/{{ $visit->reservation_id }}" method="post">
                    @csrf
                    @method('PUT')
                    <button class="btn btn-outline-danger">Cancel</button>
                </form>
            </td>
        </tr>
        @empty
        <h2 class="text-center">No visits found</h2>
        @endforelse
    </table>
</div>

@endsection
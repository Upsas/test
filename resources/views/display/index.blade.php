@extends('layouts.app')
<meta http-equiv="refresh" content="5">

@section('content')

<h2 class="text-center">Display page</h2>
<h5 class="mb-4 text-center">Upcoming Visits</h5>
<table id='refresh' class="table table-hover mx-auto w-50">
    <thead>
        <tr class="text-left">
            <th scope='col'>Date</th>
            <th scope='col'>Status</th>
        </tr>
    </thead>
    @forelse ($visits as $visit)

    <tr class="{{ ($visit->active === 1) ? 'bg-warning' : '' }}">
        <td>{{ date('Y-m-d H:i', strtotime($visit->time))  }} </td>
        <td>
            {{ ($visit->active === 1) ? 'Active' : 'Reserved' }}</td>
    </tr>
    </div>
    @empty
    <h2 class=" text-center">No records to show</h2>
    @endforelse
</table>


@endsection
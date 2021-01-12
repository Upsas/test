<?php

namespace App\Repositories\Displays;

use App\Models\Visit;

class DisplayRepository
{
    public function displayVisits()
    {
        return Visit::where('active', 1)
            ->orWhere('reservation_status', 1)
            ->orderBy('active', 'desc')
            ->orderBy('time', 'asc')
            ->take(5)
            ->get();
    }

    public function displayUpcomingVisits($id)
    {
        return Visit::where('specialist_id', $id)->orderBy('time', 'desc')->take(5)->get();
    }

}

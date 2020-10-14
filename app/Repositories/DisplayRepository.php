<?php

namespace App\Repositories;

use App\Visit;

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

}
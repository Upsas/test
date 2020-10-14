<?php

namespace App\Repositories;

use App\Visit;

class VisitRepository
{
    public function getSpecialistVisits($id)
    {
        return Visit::where('specialist_id', $id)->orderBy('reservation_status', 'desc')->orderBy('time', 'asc')->take(9)->get();
    }

    public function getSpecialistReservedVisits($id)
    {
        return Visit::where('specialist_id', $id)->where('reservation_status', '1')->orderBy('reservation_status', 'desc')->orderBy('time', 'asc')->take(9)->get();
    }
    public function getVisitByReservationId($reservation_id)
    {
        return Visit::where('reservation_id', $reservation_id)->first();
    }

    public function getActiveReservation($specialist_id)
    {
        return Visit::where('active', '=', 1)->where('specialist_id', $specialist_id);
    }

}

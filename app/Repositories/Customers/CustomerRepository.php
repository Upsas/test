<?php

namespace App\Repositories\Customers;

use App\Visit;

class CustomerRepository implements CustomerRepositoryInterface
{

    public function showCustomerVisits($time)
    {

        return Visit::where('time', 'like', $time . '%')->where('reservation_status', '0')->orderBy('time', 'asc')->get();

    }

    public function showCustomersReservationById($reservation_id)
    {
        return Visit::where('reservation_id', $reservation_id)->first();

    }

    public function showCustomersReservation($id)
    {
        return Visit::where('reservation_id', $id)->where('reservation_status', 1)->first();
    }
}

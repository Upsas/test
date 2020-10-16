<?php

namespace App\Http\Controllers;

use App\Services\Customers\Customers;

class CustomerController extends Controller
{

    private $customers;

    public function __construct(Customers $customers)
    {
        $this->customers = $customers;
    }

    public function welcome()
    {
        return view('welcome');
    }

    public function index()
    {

        $visits = ($this->customers->checkDate());
        return view('customers.index', $visits);
    }

    public function show($reservation_id)
    {
        $visits = $this->customers->reserveVisit($reservation_id);
        return view('customers.show', $visits);
    }
    public function show_reservation()
    {
        $reservation = $this->customers->checkVisit();
        return view('customers.show_reservation', $reservation);

    }

    public function destroy($reservation_id)
    {
        $this->customers->cancelVisit($reservation_id);
        return redirect('/')->with('message', 'you canceled reservation succesfully');
    }

}

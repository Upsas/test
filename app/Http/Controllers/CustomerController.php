<?php

namespace App\Http\Controllers;

use App\Repositories\Customers\CustomerRepositoryInterface;

class CustomerController extends Controller
{

    private $customerRepository;

    public function __construct(CustomerRepositoryInterface $customerRepository)
    {
        $this->customerRepository = $customerRepository;
    }

    public function welcome()
    {

        return view('welcome');
    }

    public function index()
    {

        $this->validateData($time = request('check_date'));
        $visits = $this->customerRepository->showCustomerVisits($time);
        return view('customers.index', compact('visits', 'time'));
    }

    public function show($reservation_id)
    {
        $visits = $this->customerRepository->showCustomersReservationById($reservation_id);
        if (!empty($visits)) {
            $visits->reservation_status = '1';
            $visits->save();
        }
        return view('customers.show', compact('reservation_id', 'visits'));
    }
    public function show_reservation()
    {
        $this->validateDataReservation($id = request('reservation_check'));
        $reservation = $this->customerRepository->showCustomersReservation($id);
        return view('customers.show_reservation', compact('id', 'reservation'));

    }

    public function destroy($reservation_id)
    {
        $visit = $this->customerRepository->showCustomersReservationById($reservation_id);
        $visit->reservation_status = '0';
        $visit->save();
        return redirect('/')->with('message', 'you canceled reservation succesfully');
    }

    protected function validateData()
    {
        return request()->validate([
            'check_date' => 'required',
        ]);
    }
    protected function validateDataReservation()
    {
        return request()->validate([
            'reservation_check' => 'required | numeric',
        ]);
    }
}

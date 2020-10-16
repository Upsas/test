<?php
namespace App\Services\Customers;

use App\Repositories\Customers\CustomerRepositoryInterface;

class Customers
{

    private $customerRepository;
    public function __construct(CustomerRepositoryInterface $customerRepository)
    {
        $this->customerRepository = $customerRepository;
    }

    public function checkDate()
    {
        $this->validateData($time = request('check_date'));
        $visits = $this->customerRepository->showCustomerVisits($time);

        return compact('visits', 'time');
    }

    public function reserveVisit($reservation_id)
    {
        $visits = $this->customerRepository->showCustomersReservationById($reservation_id);
        if (!empty($visits)) {
            $visits->reservation_status = '1';
            $visits->save();
        }
        return compact('visits', 'reservation_id');
    }

    public function checkVisit()
    {

        $this->validateDataReservation($id = request('reservation_check'));
        $reservation = $this->customerRepository->showCustomersReservation($id);
        return compact('id', 'reservation');
    }

    public function cancelVisit($reservation_id)
    {
        $visits = $this->customerRepository->showCustomersReservationById($reservation_id);
        $visits->reservation_status = '0';
        $visits->save();

        return compact($visits);
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

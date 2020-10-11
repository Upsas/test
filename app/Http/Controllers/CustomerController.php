<?php

namespace App\Http\Controllers;

use App\Visit;

class CustomerController extends Controller
{

    public function welcome()
    {
        return view('welcome');
    }

    public function index()
    {

        $this->validateData($time = request('check_date'));
        $visits = Visit::where('time', 'like', $time . '%')->where('reservation_status', '0')->orderBy('time', 'asc')->get();
        return view('customers.index', compact('visits', 'time'));
    }

    public function show($reservation_id)
    {
        $visits = Visit::where('reservation_id', $reservation_id)->first();
        if (!empty($visits)) {
            $visits->reservation_status = '1';
            $visits->save();
        }
        return view('customers.show', compact('reservation_id', 'visits'));
    }
    public function show_reservation()
    {
        $this->validateDataReservation($id = request('reservation_check'));
        $reservation = Visit::where('reservation_id', $id)->where('reservation_status', 1)->first();
        return view('customers.show_reservation', compact('id', 'reservation'));

    }

    public function destroy($reservation_id)
    {
        $visit = Visit::where('reservation_id', $reservation_id)->first();
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

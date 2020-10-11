<?php

namespace App\Http\Controllers;

use App\Visit;
use Illuminate\Support\Facades\Auth;

class VisitController extends Controller
{

    public function index()
    {
        $id = Auth::id();
        $visits = Visit::where('specialist_id', $id)->orderBy('reservation_status', 'desc')->orderBy('time', 'asc')->take(9)->get();
        return view('visits.index', compact('id', 'visits'));

    }

    public function store()
    {
        $visit = new Visit();

        $this->validateData($visit->time = request('date'));
        $visit->specialist_id = request('id');
        $visit->reservation_id = request('reservation_id');
        $visit->save();
        return redirect()->back();
    }

    public function destroy($reservation_id)
    {
        $visit = Visit::where('reservation_id', $reservation_id)->first();
        $visit->delete();
        return redirect()->back();
    }

    public function show()
    {
        return view('visits.show');
    }

    protected function validateData()
    {
        return request()->validate([
            'date' => 'required | date_format:Y-m-d H:i',
        ]);
    }
}

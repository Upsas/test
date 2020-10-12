<?php

namespace App\Http\Controllers;

use App\Visit;
use Illuminate\Support\Facades\Auth;

class VisitController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');

    }

    public function index()
    {
        $id = Auth::id();
        $visits = Visit::where('specialist_id', $id)->where('reservation_status', '1')->orderBy('reservation_status', 'desc')->orderBy('time', 'asc')->take(9)->get();
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

    public function active($reservation_id)
    {
        $visit = Visit::where('reservation_id', $reservation_id)->first();
        Visit::where('active', '=', 1)->where('specialist_id', $visit->specialist_id)->update(['active' => 0]);
        ($visit->active === 0) ? $visit->active = 1 : '';
        $visit->save();
        return redirect()->back();
    }

    public function show()
    {
        $id = Auth::id();
        $visits = Visit::where('specialist_id', $id)->orderBy('reservation_status', 'desc')->orderBy('time', 'asc')->take(9)->get();
        return view('visits.show', compact('id', 'visits'));
    }

    public function update($reservation_id)
    {
        $visit = Visit::where('reservation_id', $reservation_id)->first();
        if ($visit->active === 1) {
            $visit->active = 0;
        }
        $visit->reservation_status = '0';
        $visit->save();
        return redirect()->back();
    }

    protected function validateData()
    {
        return request()->validate([
            'date' => 'required | date_format:Y-m-d H:i',
        ]);
    }
}

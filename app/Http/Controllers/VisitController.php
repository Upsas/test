<?php

namespace App\Http\Controllers;

use App\Repositories\VisitRepository;
use App\Visit;
use Illuminate\Support\Facades\Auth;

class VisitController extends Controller
{
    private $visitRepository;

    public function __construct(VisitRepository $visitRepository)
    {
        $this->visitRepository = $visitRepository;
        $this->middleware('auth');

    }

    public function index()
    {
        $id = Auth::id();
        $visits = $this->visitRepository->getSpecialistReservedVisits($id);
        return view('visits.index', compact('id', 'visits'));

    }

    public function store(Visit $visit)
    {

        $this->validateData($visit->time = request('date'));
        $visit->specialist_id = request('id');
        $visit->reservation_id = request('reservation_id');
        $visit->save();
        return redirect()->back();
    }

    public function destroy($reservation_id)
    {
        $visit = $this->visitRepository->getVisitByReservationId($reservation_id);
        $visit->delete();
        return redirect()->back();
    }

    public function active($reservation_id)
    {
        $visit = $this->visitRepository->getVisitByReservationId($reservation_id);

        $this->visitRepository->getActiveReservation($visit->specialist_id)
            ->update(['active' => 0]);
        if ($visit->active === 0) {
            $visit->active = 1;
        }
        $visit->save();
        return redirect()->back();
    }

    public function show()
    {
        $id = Auth::id();
        $visits = $this->visitRepository->getSpecialistVisits($id);
        return view('visits.show', compact('id', 'visits'));
    }

    public function update($reservation_id)
    {
        $visit = $this->visitRepository->getVisitByReservationId($reservation_id);
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

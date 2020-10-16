<?php

namespace App\Http\Controllers;

use App\Models\Visit;
use App\Services\Visits\Visits;

class VisitController extends Controller
{
    private $visitsRepository;

    public function __construct(Visits $visitsRepository)
    {
        $this->middleware('auth');
        $this->visitsRepository = $visitsRepository;

    }

    public function index()
    {
        $visits = $this->visitsRepository->getReservedSpecialistVisits();
        return view('visits.index', $visits);

    }

    public function store(Visit $visit)
    {
        $this->visitsRepository->addVisits($visit);
        return redirect()->back();
    }

    public function destroy($reservation_id)
    {
        $this->visitsRepository->deleteVisit($reservation_id);
        return redirect()->back();
    }

    public function active($reservation_id)
    {
        $this->visitsRepository->active($reservation_id);
        return redirect()->back();
    }

    public function show()
    {
        $visits = $this->visitsRepository->getSpecialistVisits();
        return view('visits.show', $visits);
    }

    public function update($reservation_id)
    {
        $this->visitsRepository->update($reservation_id);
        return redirect()->back();
    }

}

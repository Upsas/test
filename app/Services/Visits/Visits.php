<?php

namespace App\Services\Visits;

use App\Models\Visit;
use App\Repositories\Visits\VisitRepository;
use Illuminate\Support\Facades\Auth;

class Visits
{

    private $visitsRepository;

    public function __construct(VisitRepository $visitsRepository)
    {
        $this->visitsRepository = $visitsRepository;

    }

    public function getReservedSpecialistVisits()
    {
        $id = Auth::id();
        $visits = $this->visitsRepository->getSpecialistReservedVisits($id);

        return compact('id', 'visits');
    }

    public function addVisits(Visit $visit)
    {
        $this->validateData($visit->time = request('date'));
        $visit->specialist_id = request('id');
        $visit->reservation_id = request('reservation_id');
        $visit->save();

    }

    public function deleteVisit($reservation_id)
    {

        $visit = $this->visitsRepository->getVisitByReservationId($reservation_id);
        $visit->delete();
    }

    public function active($reservation_id)
    {

        $visit = $this->visitsRepository->getVisitByReservationId($reservation_id);

        $this->visitsRepository->getActiveReservation($visit->specialist_id)
            ->update(['active' => 0]);
        if ($visit->active === 0) {
            $visit->active = 1;
        }
        $visit->save();
    }

    public function getSpecialistVisits()
    {
        $id = Auth::id();
        $visits = $this->visitsRepository->getSpecialistVisits($id);
        return compact('id', 'visits');
    }

    public function update($reservation_id)
    {
        $visit = $this->visitsRepository->getVisitByReservationId($reservation_id);
        if ($visit->active === 1) {
            $visit->active = 0;
        }
        $visit->reservation_status = '0';
        $visit->save();
    }

    protected function validateData()
    {
        return request()->validate([
            'date' => 'required | date_format:Y-m-d H:i',
        ]);
    }
}

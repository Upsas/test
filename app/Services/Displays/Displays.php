<?php

namespace App\Services\Displays;

use App\Repositories\Displays\DisplayRepository;
use Illuminate\Support\Facades\Auth;

class Displays
{

    private $displayRepository;
    public function __construct(DisplayRepository $displayRepository)
    {
        $this->displayRepository = $displayRepository;
    }

    public function display()
    {
        $id = Auth::id();
        $visits = $this->displayRepository->displayVisits();
        $upcomings = $this->displayRepository->displayUpcomingVisits($id);
        return compact('visits', 'upcomings');
    }

}

<?php

namespace App\Services\Displays;

use App\Repositories\Displays\DisplayRepository;

class Displays
{

    private $displayRepository;
    public function __construct(DisplayRepository $displayRepository)
    {
        $this->displayRepository = $displayRepository;
    }

    public function display()
    {
        $visits = $this->displayRepository->displayVisits();
        return compact('visits');
    }

}

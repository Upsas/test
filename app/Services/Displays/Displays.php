<?php

namespace App\Services\Displays;

use App\Repositories\Displays\DisplayRepositoryInterface;

class Displays
{

    private $displayRepository;
    public function __construct(DisplayRepositoryInterface $displayRepository)
    {
        $this->displayRepository = $displayRepository;
    }

    public function display()
    {
        $visits = $this->displayRepository->displayVisits();
        return compact('visits');
    }

}

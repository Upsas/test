<?php

namespace App\Http\Controllers;

use App\Repositories\DisplayRepository;

class DisplayController extends Controller
{

    private $displayRepository;

    public function __construct(DisplayRepository $displayRepository)
    {
        $this->displayRepository = $displayRepository;
        $this->middleware('auth');
    }

    public function index()
    {
        $visits = $this->displayRepository->displayVisits();
        return view('display.index', compact('visits'));
    }
}

<?php

namespace App\Http\Controllers;

use App\Services\Displays\Displays;

class DisplayController extends Controller
{

    private $displays;

    public function __construct(Displays $displays)
    {
        $this->middleware('auth');

        $this->displays = $displays;
    }

    public function index()
    {
        $visits = $this->displays->display();
        return view('display.index', $visits);
    }
}

<?php

namespace App\Http\Controllers;

use App\Visit;

class DisplayController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $visits = Visit::where('active', 1)->orWhere('reservation_status', 1)->orderBy('active', 'desc')->orderBy('time', 'asc')->take(5)->get();
        return view('display.index', compact('visits'));
    }
}

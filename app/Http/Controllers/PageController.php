<?php

namespace App\Http\Controllers;

use Inertia\Inertia;

class PageController extends Controller
{
    public function home()
    {
        return Inertia::render('Home');
    }

    public function services()
    {
        return Inertia::render('Services');
    }

    public function portfolio()
    {
        return Inertia::render('Portfolio');
    }

    public function contact()
    {
        return Inertia::render('Contact');
    }
}

<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Aquí definimos las rutas principales de la web AmautaDev.
| Cada ruta usa Inertia para renderizar un componente Vue.
|
*/

// Página principal
Route::get('/', [PageController::class, 'home'])->name('home');

// Servicios
Route::get('/servicios', [PageController::class, 'services'])->name('services');

// Portafolio
Route::get('/portafolio', [PageController::class, 'portfolio'])->name('portfolio');

// Contacto
Route::get('/contacto', [PageController::class, 'contact'])->name('contact');

// (Opcional) elimina o comenta esta línea si no usarás login/register aún
require __DIR__.'/auth.php';

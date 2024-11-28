<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\VeiculoController;
use App\Http\Controllers\OpcionalController;

Route::get('/', function () {
    return view('welcome');
});

// routes/web.php
Route::get('/estoqueVeiculos', function () {
    return view('estoqueVeiculos');
});

Route::get('/estoqueVeiculos', [VeiculoController::class, 'index']);
Route::get('/seed-veiculos', [VeiculoController::class, 'seed']);
Route::get('/opcionaisVeiculos', [OpcionalController::class, 'index']);




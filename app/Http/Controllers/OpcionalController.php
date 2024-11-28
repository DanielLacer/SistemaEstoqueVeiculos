<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class OpcionalController extends Controller
{
    public function index()
    {
        $vehicleOptions = DB::table('veiculo_opcional')
            ->join('veiculos', 'veiculo_opcional.veiculo_id', '=', 'veiculos.id')
            ->join('opcionais', 'veiculo_opcional.opcional_id', '=', 'opcionais.id')
            ->select('opcionais.id as opcional_id', 'opcionais.nome', 'veiculos.id as veiculo_id', 'veiculos.modelo', 'veiculos.marca')
            ->get();

            return view('opcionaisVeiculos', compact('vehicleOptions'));
    }
}


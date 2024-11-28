<?php

namespace App\Http\Controllers;

use App\Models\Veiculo;
use App\Models\Opcional;

class VeiculoController extends Controller
{
    public function index()
    {
        $veiculos = Veiculo::all();
        return view('estoqueVeiculos', compact('veiculos'));
    }

    public function seed()
    {
        // JSON data
        $data = [
            [
                "id" => 12345,
                "marca" => "Chevrolet",
                "modelo" => "Onix",
                "ano" => 2024,
                "versao" => "LT",
                "cor" => "Branco",
                "km" => 10000,
                "combustivel" => "Gasolina",
                "cambio" => "Automático",
                "portas" => 4,
                "preco" => 85000.00,
                "date" => "2024-06-11 19:30:21",
                "opcionais" => ["Arcondicionado", "Vidroselétricos", "Direçãohidráulica", "Travaselétricas"]
            ],
            [
                "id" => 67890,
                "marca" => "Fiat",
                "modelo" => "Argo",
                "ano" => 2023,
                "versao" => "Trek",
                "cor" => "Prata",
                "km" => 20000,
                "combustivel" => "Flex",
                "cambio" => "Manual",
                "portas" => 4,
                "preco" => 72000.00,
                "date" => "2024-06-14 07:20:41",
                "opcionais" => ["Arcondicionado", "Vidroselétricos", "Direçãohidráulica"]
            ],
            [
                "id" => 23456,
                "marca" => "Volkswagen",
                "modelo" => "T-Cross",
                "ano" => 2022,
                "versao" => "Comfortline",
                "cor" => "Preto",
                "km" => 30000,
                "combustivel" => "Gasolina",
                "cambio" => "Automático",
                "portas" => 5,
                "preco" => 98000.00,
                "date" => "2024-06-14 09:15:01",
                "opcionais" => ["Arcondicionado", "Vidroselétricos", "Direçãohidráulica", "Tetosolar", "Faróis de LED"]
            ]
        ];

        // Inserir veículos e associar opcionais
        foreach ($data as $veiculoData) {
            $veiculo = Veiculo::create([
                'marca' => $veiculoData['marca'],
                'modelo' => $veiculoData['modelo'],
                'ano' => $veiculoData['ano'],
                'versao' => $veiculoData['versao'],
                'cor' => $veiculoData['cor'],
                'km' => $veiculoData['km'],
                'combustivel' => $veiculoData['combustivel'],
                'cambio' => $veiculoData['cambio'],
                'portas' => $veiculoData['portas'],
                'preco' => $veiculoData['preco'],
                'date' => $veiculoData['date']
            ]);

            foreach ($veiculoData['opcionais'] as $opcionalNome) {
                $opcional = Opcional::where('nome', $opcionalNome)->first();

                if ($opcional) {
                    $veiculo->opcionais()->attach($opcional->id);
                } else {
                    $novoOpcional = Opcional::create(['nome' => $opcionalNome]);
                    $veiculo->opcionais()->attach($novoOpcional->id);
                }
            }
        }

        return redirect('/estoqueVeiculos');
    }
}

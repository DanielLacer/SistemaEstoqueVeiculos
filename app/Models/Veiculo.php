<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Veiculo extends Model
{
    use HasFactory;

    protected $fillable = [
        'marca',
        'modelo',
        'ano',
        'versao',
        'cor',
        'km',
        'combustivel',
        'cambio',
        'portas',
        'preco',
        'date'
    ];

    protected $casts = [
        'date' => 'datetime',
    ];

    public function opcionais()
    {
        return $this->belongsToMany(Opcional::class, 'veiculo_opcional');
    }
}

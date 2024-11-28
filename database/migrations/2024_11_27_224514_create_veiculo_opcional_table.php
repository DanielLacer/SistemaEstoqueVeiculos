<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVeiculoOpcionalTable extends Migration
{
    public function up()
    {
        Schema::create('veiculo_opcional', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('veiculo_id');
            $table->unsignedBigInteger('opcional_id');
            $table->foreign('veiculo_id')->references('id')->on('veiculos')->onDelete('cascade');
            $table->foreign('opcional_id')->references('id')->on('opcionais')->onDelete('cascade');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('veiculo_opcional');
    }
}

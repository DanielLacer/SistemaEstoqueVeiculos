<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVeiculosTable extends Migration
{
    public function up()
    {
        Schema::create('veiculos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('marca');
            $table->string('modelo');
            $table->integer('ano');
            $table->string('versao');
            $table->string('cor');
            $table->integer('km');
            $table->string('combustivel');
            $table->string('cambio');
            $table->integer('portas');
            $table->decimal('preco', 10, 2);
            $table->dateTime('date');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('veiculos');
    }
}

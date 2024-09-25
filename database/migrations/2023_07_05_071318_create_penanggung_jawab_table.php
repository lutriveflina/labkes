<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePenanggungJawabTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('penanggung_jawab', function (Blueprint $table) {
            $table->id();
            $table->string('name', 100)->nullable();
            $table->string('jabatan', 255)->nullable();
            $table->string('email', 255)->nullable();
            $table->string('wa', 100)->nullable();
            $table->string('fb', 100)->nullable();
            $table->string('ig', 100)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('penanggung_jawab');
    }
}

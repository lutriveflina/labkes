<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLayananPuskesmasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('layanan_puskesmas', function (Blueprint $table) {
            $table->id();
            $table->string('nama_layanan_puskesmas');
            $table->text('deskripsi')->nullable();
            $table->string('gambar');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('layanan_puskesmas');
    }
}

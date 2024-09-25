<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePuskesmasKegiatanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('puskesmas_kegiatan', function (Blueprint $table) {
            $table->id();
            $table->string('judul');
            $table->string('konten')->nullable();
            $table->smallInteger('kategori');
            $table->smallInteger('id_pelayanan');
            $table->string('lokasi')->nullable();
            $table->string('foto_utama')->nullable();
            $table->dateTime('tanggal_kegiatan');
            $table->smallInteger('id_user');
            $table->smallInteger('pembuat');
            $table->softDeletes();
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
        Schema::dropIfExists('puskesmas_kegiatan');
    }
}

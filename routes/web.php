<?php

use App\Http\Controllers\PenghargaanController;
use App\Http\Controllers\BeritaController;
use App\Http\Controllers\PelayananController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\WebController;
use App\Http\Controllers\HelperController;
use App\Http\Controllers\PengaduanController;
use App\Http\Controllers\SejarahController;
use App\Http\Controllers\TataNilaiController;
use App\Http\Controllers\LayananLabkesController;
use App\Http\Controllers\PengumumanController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     // return view('welcome');
//     return view('template.layout');
// });

Route::get('/', [WebController::class, 'index'])->name('home');
Route::get('pelayanan/detail', [PelayananController::class, 'detail'])->name('pelayanan.detail');
Route::get('penghargaan/detail', [PenghargaanController::class, 'detail'])->name('penghargaan.detail');
Route::get('berita/detail', [BeritaController::class, 'detail'])->name('berita.detail');
Route::get('berita/single/{id}', [BeritaController::class, 'beritaSingle'])->name('berita.single');
Route::get('visi-misi', [WebController::class, 'visiMisi'])->name('visi-misi');
Route::get('hak-kewajiban', [WebController::class, 'HakKewajiban'])->name('hak-kewajiban');
Route::get('struktur-organisasi', [WebController::class, 'StrukturOrganisasi'])->name('struktur-organisasi');
Route::get('maklumat-pelayanan', [WebController::class, 'MaklumatPelayanan'])->name('maklumat-pelayanan');
Route::get('tarif-retribusi', [WebController::class, 'TarifRetribusi'])->name('tarif-retribusi');
Route::get('pola-tarif', [WebController::class, 'PolaTarif'])->name('pola-tarif');
Route::get('layanan-labkes', [LayananLabkesController::class, 'LayananLabkes'])->name('layanan-labkes');
Route::get('labkes/detail/{id}', [LayananLabkesController::class, 'singleDetail'])->name('labkes.detail');
// Route::get('pengaduan', [PengaduanController::class, 'Pengaduan'])->name('pengaduan');
Route::get('pengaduan', [PengaduanController::class, 'index'])->name('pengaduan');
Route::get('sejarah', [SejarahController::class, 'Sejarah'])->name('sejarah');
Route::get('tata-nilai', [TataNilaiController::class, 'TataNilai'])->name('tata-nilai');
Route::get('renstra', [WebController::class, 'Renstra'])->name('renstra');
Route::get('regulasiInternal', [WebController::class, 'RegulasiInternal'])->name('regulasiInternal');
Route::get('regulasiEksternal', [WebController::class, 'RegulasiEksternal'])->name('regulasiEksternal');
Route::get('capaianKerja', [WebController::class, 'CapaianKerja'])->name('capaianKerja');
Route::get('waktu-layanan', [WebController::class, 'WaktuLayanan'])->name('waktu-layanan');
Route::get('faq', [WebController::class, 'Faq'])->name('faq');
Route::get('pengumuman', [PengumumanController::class, 'Pengumuman'])->name('pengumuman');
Route::get('pengumuman.detail{id}', [PengumumanController::class, 'detail'])->name('pengumuman.detail');






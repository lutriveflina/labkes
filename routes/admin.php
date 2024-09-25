<?php

use App\Http\Controllers\Admin\PenghargaanController;
use App\Http\Controllers\Admin\AutentikasiController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\DocumentController;
use App\Http\Controllers\Admin\CapaianKerjaController;
use App\Http\Controllers\Admin\PelayananController;
use App\Http\Controllers\Admin\TarifRetribusiController;
use App\Http\Controllers\Admin\KategoriPelayananController;
use App\Http\Controllers\Admin\LayananPuskesmasController;
use App\Http\Controllers\Admin\WaktuLayananController;
use App\Http\Controllers\Admin\ParentSpController;
use App\Http\Controllers\Admin\BeritaKegiatanController;
use App\Http\Controllers\Admin\TestimonialController;
use App\Http\Controllers\Admin\VisiController;
use App\Http\Controllers\Admin\KritikSaranController;
use App\Http\Controllers\Admin\SejarahController;
use App\Http\Controllers\Admin\TataNilaiController;
use App\Http\Controllers\Admin\RenstraController;
use App\Http\Controllers\Admin\RegulasiInternalController;
use App\Http\Controllers\Admin\RegulasiEksternalController;
use App\Http\Controllers\Admin\webConfigController;
use App\Http\Controllers\Admin\FaqController;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\Route;

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


Route::prefix('autentikasi')->group(function () {
    Route::get('login', [AutentikasiController::class, 'login'])->name('admin.autentikasi.login');
    Route::post('login', [AutentikasiController::class, 'postLogin'])->name('admin.autentikasi.post-login');
    Route::get('logout', [AutentikasiController::class, 'logout'])->name('admin.autentikasi.logout');
});

Route::middleware('auth.admin')->group(function () {
    Route::get('dashboard', [DashboardController::class, 'index'])->name('admin.dashboard');
    Route::prefix('pelayanan')->group(function () {
        Route::get('', [PelayananController::class, 'index'])->name('admin.pelayanan');
        Route::get('/form', [PelayananController::class, 'form'])->name('admin.pelayanan.form');
        Route::post('post', [PelayananController::class, 'post'])->name('admin.pelayanan.post');
        Route::delete('delete/{id}', [PelayananController::class, 'delete'])->name('admin.pelayanan.delete');
    });

    Route::prefix('kategory_layanan')->group(function () {
        Route::get('', [KategoriPelayananController::class, 'index'])->name('admin.kategory_layanan');
        Route::get('/form', [KategoriPelayananController::class, 'form'])->name('admin.kategory_layanan.form');
        Route::post('post', [KategoriPelayananController::class, 'post'])->name('admin.kategory_layanan.post');
        Route::delete('delete/{id}', [KategoriPelayananController::class, 'delete'])->name('admin.kategory_layanan.delete');
    });

    Route::prefix('layanan-puskesmas')->group(function () {
        Route::get('', [LayananPuskesmasController::class, 'index'])->name('admin.layanan-puskesmas');
        Route::get('/form', [LayananPuskesmasController::class, 'form'])->name('admin.layanan-puskesmas.form');
        Route::post('/post', [LayananPuskesmasController::class, 'post'])->name('admin.layanan-puskesmas.post');
        Route::delete('delete/{id}', [LayananPuskesmasController::class, 'delete'])->name('admin.layanan-puskesmas.delete');
    });

    Route::prefix('penghargaan')->group(function () {
        Route::get('', [PenghargaanController::class, 'index'])->name('admin.penghargaan');
        Route::get('/form', [PenghargaanController::class, 'form'])->name('admin.penghargaan.form');
        Route::post('/post', [PenghargaanController::class, 'post'])->name('admin.penghargaan.post');
        Route::delete('delete/{id}', [PenghargaanController::class, 'delete'])->name('admin.penghargaan.delete');
    });

    Route::prefix('tarif-retribusi')->group(function () {
        Route::get('', [TarifRetribusiController::class, 'index'])->name('admin.tarif-retribusi');
        Route::get('/form', [TarifRetribusiController::class, 'form'])->name('admin.tarif-retribusi.form');
        Route::post('/post', [TarifRetribusiController::class, 'post'])->name('admin.tarif-retribusi.post');
        Route::delete('delete/{id}', [TarifRetribusiController::class, 'delete'])->name('admin.tarif-retribusi.delete');
    });


    Route::prefix('parent-standar')->group(function () {
        Route::get('', [ParentSpController::class, 'index'])->name('admin.parent-standar');
        Route::get('/form', [ParentSpController::class, 'form'])->name('admin.parent-standar.form');
        Route::post('/post', [ParentSpController::class, 'post'])->name('admin.parent-standar.post');
        Route::delete('delete/{id}', [ParentSpController::class, 'delete'])->name('admin.parent-standar.delete');
    });

    Route::prefix('berita-kegiatan')->group(function () {
        Route::get('', [BeritaKegiatanController::class, 'index'])->name('admin.berita-kegiatan');
        Route::post('post', [BeritaKegiatanController::class, 'post'])->name('admin.berita-kegiatan.post');
        Route::get('form', [BeritaKegiatanController::class, 'form'])->name('admin.berita-kegiatan.form');
        Route::delete('delete/{id}', [BeritaKegiatanController::class, 'delete'])->name('admin.berita-kegiatan.delete');
        Route::get('detail/{id}', [BeritaKegiatanController::class, 'detail'])->name('admin.berita-kegiatan.detail');
    });

    Route::prefix('capaian-kerja')->group(function () {
        Route::get('', [CapaianKerjaController::class, 'index'])->name('admin.capaian-kerja');
        Route::get('/form', [CapaianKerjaController::class, 'form'])->name('admin.capaian-kerja.form');
        Route::post('/post', [CapaianKerjaController::class, 'post'])->name('admin.capaian-kerja.post');
        Route::delete('delete/{id}', [CapaianKerjaController::class, 'delete'])->name('admin.capaian-kerja.delete');
    });

    Route::prefix('regulasi-internal')->group(function () {
        Route::get('', [RegulasiInternalController::class, 'index'])->name('admin.regulasi-internal');
        Route::get('/form', [RegulasiInternalController::class, 'form'])->name('admin.regulasi-internal.form');
        Route::post('/post', [RegulasiInternalController::class, 'post'])->name('admin.regulasi-internal.post');
        Route::delete('delete/{id}', [RegulasiInternalController::class, 'delete'])->name('admin.regulasi-internal.delete');
    });

    Route::prefix('regulasi-eksternal')->group(function () {
        Route::get('', [RegulasiEksternalController::class, 'index'])->name('admin.regulasi-eksternal');
        Route::get('/form', [RegulasiEksternalController::class, 'form'])->name('admin.regulasi-eksternal.form');
        Route::post('/post', [RegulasiEksternalController::class, 'post'])->name('admin.regulasi-eksternal.post');
        Route::delete('delete/{id}', [RegulasiEksternalController::class, 'delete'])->name('admin.regulasi-eksternal.delete');
    });

    Route::prefix('visi')->group(function () {
        Route::get('', [VisiController::class, 'index'])->name('admin.visi');
        Route::get('/form', [VisiController::class, 'form'])->name('admin.visi.form');
        Route::post('/post', [VisiController::class, 'post'])->name('admin.visi.post');
        Route::delete('delete/{id}', [VisiController::class, 'delete'])->name('admin.visi.delete');
    });

    Route::prefix('sejarah')->group(function () {
        Route::get('', [SejarahController::class, 'index'])->name('admin.sejarah');
        Route::get('/form', [SejarahController::class, 'form'])->name('admin.sejarah.form');
        Route::post('/post', [SejarahController::class, 'post'])->name('admin.sejarah.post');
        Route::delete('delete/{id}', [SejarahController::class, 'delete'])->name('admin.sejarah.delete');
    });

    Route::prefix('renstra')->group(function () {
        Route::get('', [RenstraController::class, 'index'])->name('admin.renstra');
        Route::get('/form', [RenstraController::class, 'form'])->name('admin.renstra.form');
        Route::post('/post', [RenstraController::class, 'post'])->name('admin.renstra.post');
        Route::delete('delete/{id}', [RenstraController::class, 'delete'])->name('admin.renstra.delete');
    });
    Route::prefix('faq')->group(function () {
        Route::get('', [FaqController::class, 'index'])->name('admin.faq');
        Route::get('/form', [FaqController::class, 'form'])->name('admin.faq.form');
        Route::post('/post', [FaqController::class, 'post'])->name('admin.faq.post');
        Route::delete('delete/{id}', [FaqController::class, 'delete'])->name('admin.faq.delete');
    });

    Route::prefix('tata-nilai')->group(function () {
        Route::get('', [TataNilaiController::class, 'index'])->name('admin.tata-nilai');
        Route::get('/form', [TataNilaiController::class, 'form'])->name('admin.tata-nilai.form');
        Route::post('/post', [TataNilaiController::class, 'post'])->name('admin.tata-nilai.post');
        Route::delete('delete/{id}', [TataNilaiController::class, 'delete'])->name('admin.tata-nilai.delete');
    });

    Route::prefix('waktu-layanan')->group(function () {
        Route::get('', [WaktuLayananController::class, 'index'])->name('admin.waktu-layanan');
        Route::get('/form', [WaktuLayananController::class, 'form'])->name('admin.waktu-layanan.form');
        Route::post('/post', [WaktuLayananController::class, 'post'])->name('admin.waktu-layanan.post');
        Route::delete('delete/{id}', [WaktuLayananController::class, 'delete'])->name('admin.waktu-layanan.delete');
    });

    Route::get('kritik-saran', [KritikSaranController::class, 'index'])->name('admin.kritik-saran');

    Route::get('/', function () {

        return redirect()->route('admin.dashboard');
    });
});

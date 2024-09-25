<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Lapor;

class PengaduanController extends Controller
{
    // public $name;
    // public $email;
    // public $subject;
    // public $pesan;

    // public function index(Request $request){
    //     $data['title'] = 'Kotak & Saran';
    //     $data['active'] = 'lapor';
    //     $pengaduan = Lapor::get();
    //     $data['pengaduan'] = $pengaduan;
    //     return view('dashboard.pengaduan', $data);
    // }

    // protected $newsUpdate = [
    //     'name' => 'required',
    //     'email' => 'required',
    //     'subject' => 'required',
    //     'pesan' => 'required',
    // ];

    // protected $messages = [
    //     'name.required' => 'Masukan nama pelapor',
    //     'email.required' => 'Masukan email laporan',
    //     'subject.required' => 'Masukan subject laporan',
    //     'pesan.required' => 'Masukan isi laporan',
    // ];

    // public function resetInput(){
    //     $this->name =null;
    //     $this->email = null;
    //     $this->subject = null;
    //     $this->pesan = null;
    // }

    // public function post(Request $request)
    // {
    //     $validator = Validator::make($request->all(), [
    //         'name' => 'required|string',
    //         'email' => 'required|string',
    //         'subject' => 'required|string',
    //         'pesan' => 'required|string',

    //     ]);

    //     if ($validator->fails()) {
    //         return redirect()->back()->with('fail', $validator->errors()->all()[0]);
    //     }

    //     $data['name'] = $request->name;
    //     $data['email'] = $request->email;
    //     $data['subject'] = $request->subject;
    //     $data['pesan'] = $request->pesan;

    //     KategoriPelayanan::updateOrCreate([
    //         'id' => $request->id_lapor
    //     ], $data);

    //     return redirect()->route('dashboar.pengaduan')->with('success', 'Kritik dan Saran Berhasil Disampaikan');
    // }
    public function index(){
        $data['title'] = 'Kritik & Saran';
        $data['active'] = 'lapor';

        return view('dashboard.pengaduan', $data);
    }
}

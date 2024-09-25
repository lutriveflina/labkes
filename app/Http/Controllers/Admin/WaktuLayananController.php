<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\WaktuLayanan;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class WaktuLayananController extends Controller
{
    public function index(){
        $data['title'] = "Waktu Layanan";
        $data['breadCrumb'] = ['Waktu Layanan', 'Data'];
        $data['active'] = 'waktu-layanan';
        $listWaktuLayanan = WaktuLayanan::get();
        $data['listWaktuLayanan'] = $listWaktuLayanan;
        return view('admin.waktu-layanan.index', $data);
    }

    public function post(Request $request){
        $validator = Validator::make($request->all(), [
            'Komponen' => 'required|string',
            'deskripsi' => 'required|string',
        ]);

        if($validator->fails()){
            return redirect()->back()->with('fail', $validator->errors()->all()[0]);
        }


        $data['Komponen'] = $request->Komponen;
        $data['deskripsi'] = $request->deskripsi;

        waktuLayanan::updateOrCreate([
            'id' => $request->id_waktu_layanan
        ], $data);

        return redirect()->route('admin.waktu-layanan')->with('success', 'Berhasil menambahkan Document');
    }

    public function form(Request $request){
        $data['title'] = 'Form Waktu Layanan';
        $data['active'] = 'waktu-layanan';
        $data['breadCrumb'] = ['Waktu Layanan', 'Form'];
        $data['waktuLayanan'] = WaktuLayanan::where('id', $request->id_waktu_layanan)->first();
        return view('admin.waktu-layanan.form', $data);
    }

    public function delete($id){
        $waktuLayanan = WaktuLayanan::find($id);
        if(!$waktuLayanan){
            return redirect()->back()->with('fail', 'Data Document tidak ditemukan !');
        }

        $waktuLayanan->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus data Document');
    }
}

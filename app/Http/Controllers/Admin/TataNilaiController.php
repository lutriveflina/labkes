<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\TataNilai;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class TataNilaiController extends Controller
{
    public function index(){
        $data['title'] = "Tata Nilai";
        $data['breadCrumb'] = ['Tata Nilai', 'Data'];
        $data['active'] = 'tata-nilai';
        $listTataNilai = TataNilai::get();
        $data['listTataNilai'] = $listTataNilai;
        return view('admin.tata-nilai.index', $data);
    }

    public function post(Request $request){
        $validator = Validator::make($request->all(), [
            'deskripsi' => 'required|string',
        ]);

        if($validator->fails()){
            return redirect()->back()->with('fail', $validator->errors()->all()[0]);
        }


        $data['deskripsi'] = $request->deskripsi;

        TataNilai::updateOrCreate([
            'id' => $request->id_tata_nilai
        ], $data);

        return redirect()->route('admin.tata-nilai')->with('success', 'Berhasil menambahkan ');
    }

    public function form(Request $request){
        $data['title'] = 'Form Tata Nilai ';
        $data['active'] = 'tata-nilai';
        $data['breadCrumb'] = ['Tata Nilai', 'Form'];
        $data['listTataNilai'] = TataNilai::where('id', $request->id_tata_nilai)->first();
        return view('admin.tata-nilai.form', $data);
    }

    public function delete($id){
        $listTataNilai = TataNilai::find($id);
        if(!$listTataNilai){
            return redirect()->back()->with('fail', 'Data tidak ditemukan !');
        }

        $listTataNilai->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus Data');
    }
}

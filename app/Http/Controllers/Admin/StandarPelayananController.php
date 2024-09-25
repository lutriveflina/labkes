<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\ParentSp;
use App\Models\StandarPelayanan;
use App\Models\Pelayanan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class StandarPelayananController extends Controller
{
    public function index(){
        $data['title'] = "Standar Pelayanan";
        $data['breadCrumb'] = ['Standar Pelayanan', 'Data'];
        $data['active'] = 'standar-pelayanan';
        $listStandarPelayanan = StandarPelayanan::with('kat_standar')->get();
        // dd($listStandarPelayanan);
        $data['listPelayanan'] = ParentSp::get();
        $data['listStandarPelayanan'] = $listStandarPelayanan;
        return view('admin.standar-pelayanan.index', $data);
    }

    public function post(Request $request){
        $validator = Validator::make($request->all(), [
            'id_pelayanan' => 'required|string',
            'Komponen' => 'required|string',
            'deskripsi' => 'required|string',
        ]);

        if($validator->fails()){
            return redirect()->back()->with('fail', $validator->errors()->all()[0]);
        }


        $data['id_pelayanan'] = $request->id_pelayanan;
        $data['Komponen'] = $request->Komponen;
        $data['deskripsi'] = $request->deskripsi;

        StandarPelayanan::updateOrCreate([
            'id' => $request->id_standar_pelayanan
        ], $data);

        return redirect()->route('admin.standar-pelayanan')->with('success', 'Berhasil menambahkan Document');
    }

    public function form(Request $request){
        $data['title'] = 'Form Standar Pelayanan';
        $data['active'] = 'standar-pelayanan';
        $data['breadCrumb'] = ['Standar Pelayanan', 'Form'];
        $data['standarPelayanan'] = StandarPelayanan::where('id', $request->id_standar_pelayanan)->first();
        $data['listPelayanan'] = ParentSp::get();
        return view('admin.standar-pelayanan.form', $data);
    }

    public function delete($id){
        $standarPelayanan = StandarPelayanan::find($id);
        if(!$standarPelayanan){
            return redirect()->back()->with('fail', 'Data Document tidak ditemukan !');
        }

        $standarPelayanan->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus data Document');
    }
}

<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ParentSp;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class ParentSpController extends Controller
{

    public function index(){
        $data['title'] = "Kategori Standar Pelayanan";
        $data['breadCrumb'] = ['Kategori Standar Pelayanan', 'Data'];
        $data['active'] = 'parent-standar';
        $kategoriStandarPelayanan = ParentSp::get();
        $data['kategoriStandarPelayanan'] = $kategoriStandarPelayanan;
        return view('admin.parent-standar.index', $data);
    }

    public function post(Request $request){
        $validator = Validator::make($request->all(), [
            'name' => 'required|string',
        ]);

        if($validator->fails()){
            return redirect()->back()->with('fail', $validator->errors()->all()[0]);
        }


        $data['name'] = $request->name;

        ParentSp::updateOrCreate([
            'id' => $request->id_standar_pelayanan
        ], $data);

        return redirect()->route('admin.parent-standar')->with('success', 'Berhasil menambahkan Document');
    }

    public function form(Request $request){
        $data['title'] = 'Form Kategori Standar Pelayanan';
        $data['active'] = 'parent-standar';
        $data['breadCrumb'] = ['Kategori Standar Pelayanan', 'Form'];
        $data['kategoriStandarPelayanan'] = ParentSp::where('id', $request->id_standar_pelayanan)->first();
        return view('admin.parent-standar.form', $data);
    }

    public function delete($id){
        $kategoriStandarPelayanan = ParentSp::find($id);
        if(!$kategoriStandarPelayanan){
            return redirect()->back()->with('fail', 'Data Document tidak ditemukan !');
        }

        $kategoriStandarPelayanan->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus data Document');
    }
}

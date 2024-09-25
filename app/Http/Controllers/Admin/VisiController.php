<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Visi;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;



class VisiController extends Controller
{
    public function index(){
        $data['title'] = "Visi Misi";
        $data['breadCrumb'] = ['Visi Misi', 'Data'];
        $data['active'] = 'visi';
        $listVisi = Visi::get();
        $data['listVisi'] = $listVisi;
        return view('admin.visi.index', $data);
    }

    public function post(Request $request){
        $validator = Validator::make($request->all(), [
            'visi' => 'required|string',
            'misi' => 'required|string',
        ]);

        if($validator->fails()){
            return redirect()->back()->with('fail', $validator->errors()->all()[0]);
        }


        $data['visi'] = $request->visi;
        $data['misi'] = $request->misi;

        Visi::updateOrCreate([
            'id' => $request->id_visi
        ], $data);

        return redirect()->route('admin.visi')->with('success', 'Berhasil menambahkan ');
    }

    public function form(Request $request){
        $data['title'] = 'Form Visi Misi ';
        $data['active'] = 'visi';
        $data['breadCrumb'] = ['Visi Misi', 'Form'];
        $data['listVisi'] = Visi::where('id', $request->id_visi)->first();
        return view('admin.visi.form', $data);
    }

    public function delete($id){
        $listVisi = Visi::find($id);
        if(!$listVisi){
            return redirect()->back()->with('fail', 'Data tidak ditemukan !');
        }

        $listVisi->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus Data');
    }
}

<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Sejarah;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class SejarahController extends Controller
{
    public function index(){
        $data['title'] = "Sejarah";
        $data['breadCrumb'] = ['Sejarah', 'Data'];
        $data['active'] = 'sejarah';
        $listSejarah = Sejarah::get();
        $data['listSejarah'] = $listSejarah;
        return view('admin.sejarah.index', $data);
    }

    public function post(Request $request){
        $validator = Validator::make($request->all(), [
            'deskripsi' => 'required|string',
        ]);

        if($validator->fails()){
            return redirect()->back()->with('fail', $validator->errors()->all()[0]);
        }


        $data['deskripsi'] = $request->deskripsi;

        Sejarah::updateOrCreate([
            'id' => $request->id_sejarah
        ], $data);

        return redirect()->route('admin.sejarah')->with('success', 'Berhasil menambahkan ');
    }

    public function form(Request $request){
        $data['title'] = 'Form Sejarah ';
        $data['active'] = 'sejarah';
        $data['breadCrumb'] = ['Sejarah', 'Form'];
        $data['listSejarah'] = Sejarah::where('id', $request->id_sejarah)->first();
        return view('admin.sejarah.form', $data);
    }

    public function delete($id){
        $listSejarah = Sejarah::find($id);
        if(!$listSejarah){
            return redirect()->back()->with('fail', 'Data tidak ditemukan !');
        }

        $listSejarah->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus Data');
    }
}


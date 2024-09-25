<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Renstra;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class RenstraController extends Controller
{
    public function index(){
        $data['title'] = "Renstra";
        $data['breadCrumb'] = ['Renstra', 'Data'];
        $data['active'] = 'renstra';
        $listRenstra = Renstra::get();
        $data['listRenstra'] = $listRenstra;
        return view('admin.renstra.index', $data);
    }

    public function post(Request $request){
        $validator = Validator::make($request->all(), [
            'judul' => 'required|string',
        ]);

        if($validator->fails()){
            return redirect()->back()->with('fail', $validator->errors()->all()[0]);
        }

        $file = null;
        if($request->hasFile('file')){
            $validator = Validator::make($request->all(), [
            'file' => 'required|mimes:pdf,xlx,csv|max:100000'
            ]);
            if($validator->fails()){
                return redirect()->back()->with('fail', $validator->errors()->all()[0]);
            }
            $path = Storage::disk('public')->put('renstra', $request->file('file'));
            $data['file'] = $path;
            $file = $path;
        }

        $data['judul'] = $request->judul;
        if ($file != null) {
            $data['file'] = $file;
        }

        Renstra::updateOrCreate([
            'id' => $request->id_renstra
        ], $data);

        return redirect()->route('admin.renstra')->with('success', 'Berhasil menambahkan Renstra');
    }

    public function form(Request $request){
        $data['title'] = 'Form Renstra';
        $data['active'] = 'renstra';
        $data['breadCrumb'] = ['Renstra', 'Form'];
        // $data['capaianKerja'] = CapaianKerja::find($request->id_renstra);
        $data['renstra'] = Renstra::where('id', $request->id_renstra)->first();
        return view('admin.renstra.form', $data);
    }

    public function delete($id){
        $renstra = Renstra::find($id);
        if(!$renstra){
            return redirect()->back()->with('fail', 'Data renstra tidak ditemukan !');
        }

        $renstra->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus data renstra');
    }
}

<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Faq;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class FaqController extends Controller
{
    public function index(){
        $data['title'] = "Faq";
        $data['breadCrumb'] = ['Faq', 'Data'];
        $data['active'] = 'faq';
        $listFaq = Faq::get();
        $data['listFaq'] = $listFaq;
        return view('admin.faq.index', $data);
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
            $path = Storage::disk('public')->put('faq', $request->file('file'));
            $data['file'] = $path;
            $file = $path;
        }

        $data['judul'] = $request->judul;
        if ($file != null) {
            $data['file'] = $file;
        }

        Faq::updateOrCreate([
            'id' => $request->id_faq
        ], $data);

        return redirect()->route('admin.faq')->with('success', 'Berhasil menambahkan FAQ');
    }

    public function form(Request $request){
        $data['title'] = 'Form FAQ';
        $data['active'] = 'faq';
        $data['breadCrumb'] = ['faq', 'Form'];
        // $data['capaianKerja'] = CapaianKerja::find($request->id_faq);
        $data['faq'] = Faq::where('id', $request->id_faq)->first();
        return view('admin.faq.form', $data);
    }

    public function delete($id){
        $faq = Faq::find($id);
        if(!$faq){
            return redirect()->back()->with('fail', 'Data faq tidak ditemukan !');
        }

        $faq->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus data faq');
    }
}

<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Testimonial;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class TestimonialController extends Controller
{
    public function index(){
        $data['title'] = 'Testimonial';
        $data['breadCrumb'] = ['Testimonial Data'];
        $data['active'] = 'testimonial';
        $data['listTestimonial'] = Testimonial::get();
        return view('admin.testimonial.index', $data);
    }

    public function post(Request $request){
        $validator = Validator::make($request->all(), [
            'jabatan' => 'required|string',
            'isi' => 'required|string',
            'dari' => 'required|string'
        ]);

        if($validator->fails()){
            return redirect()->back()->with('fail', $validator->errors()->all()[0]);
        }

        Testimonial::updateOrCreate([
            'id' => $request->id_testimonial
        ], $request->all());

        return redirect()->back()->with('sucess', 'Berhasil menyimpan data testimonial');
    }

    public function delete($id){
        $testimonial = Testimonial::find($id);
        if(!$testimonial){
            return redirect()->back()->with('fail', 'Data tidak ditemukan !');
        }

        $testimonial->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus data testimonial');
    }
}

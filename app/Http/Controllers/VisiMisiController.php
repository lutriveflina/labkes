<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Visi;
use App\Http\Controllers\Controller;


class VisiMisiController extends Controller
{
    public function visiMisi(Request $request){
        $data['title'] = 'Visi & Misi';
        $data['active'] = 'visi-misi';
        $listVisiMisi = Visi::find($request->id);
        $data['listVisiMisi'] = $listVisiMisi;

        return view('dashboard.visi-misi', $data);
    }
}

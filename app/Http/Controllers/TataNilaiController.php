<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\TataNilai;
use App\Http\Controllers\Controller;

class TataNilaiController extends Controller
{
    public function TataNilai(Request $request){
        $data['title'] = 'Tata Nilai';
        $data['active'] = 'tata-nilai';
        $listTataNilai = TataNilai::find($request->id);
        $data['listTataNilai'] = $listTataNilai;

        return view('dashboard.tata-nilai', $data);
    }
}

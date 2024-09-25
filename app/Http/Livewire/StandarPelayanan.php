<?php

namespace App\Http\Livewire;

use App\Models\ParentSp;
use App\Models\StandarPelayanan as ModelStandarPelayanan;
use App\Models\Pelayanan;
use Livewire\Component;

class StandarPelayanan extends Component
{
    public $listStandarPelayanan;

    public function render()
    {        // dd($data['listStandarPelayanan']);
        return view('livewire.standar-pelayanan');
    }

    public function mount(){
        $this->listStandarPelayanan = ModelStandarPelayanan::with('kat_standar')->get()->groupBy(function($data) {
            return $data->kat_standar->name;
        })->toArray();

    }
}

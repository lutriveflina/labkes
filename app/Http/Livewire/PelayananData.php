<?php

namespace App\Http\Livewire;

use App\Models\Pelayanan as ModelsPelayanan;
use Livewire\Component;

class PelayananData extends Component
{
    public $idLayanan;
    public $listPelayanan;
    public function render()
    {
        if ($this->idLayanan) {
            $this->listPelayanan = ModelsPelayanan::find($this->idLayanan);
        } else {
            $this->listPelayanan = ModelsPelayanan::get();
        }

        $data['listPelayanan'] = $this->listPelayanan;

        return view('livewire.pelayanan-data',$data);
    }

    public function mount($id = null){
        $this->idLayanan = $id;
        
    }
}

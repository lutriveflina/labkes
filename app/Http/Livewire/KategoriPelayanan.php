<?php

namespace App\Http\Livewire;

use App\Models\KategoriPelayanan as ModelsKategoryPelayanan;
use Livewire\Component;

class KategoriPelayanan extends Component
{
    public $listKategoriPelayanan;
    public function render()
    {
        $this->listKategoriPelayanan = ModelsKategoryPelayanan::get();
        $data['listKategoriPelayanan'] = $this->listKategoriPelayanan;
        return view('livewire.kategori-pelayanan');
    }
    public function mount($id_kategory = null){
        // dd('work');
        $this->id_kategory = $id_kategory;

      
    }
}


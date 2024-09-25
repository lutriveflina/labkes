<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\TataNilai as ModelsTataNilai;

class TataNilai extends Component
{
    public $listTataNilai;
    public function render()
    {
        $this->listTataNilai = ModelsTataNilai::get();
        $data['listTataNilai'] = $this->listTataNilai;
        return view('livewire.tata-nilai',$data);
    }
}

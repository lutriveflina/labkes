<?php

namespace App\Http\Livewire;

use App\Models\Tujuan as ModelsTujuan;
use Livewire\Component;

class Tujuan extends Component
{
    public $listTujuan;
    public function render()
    {
        $this->listTujuan = ModelsTujuan::get();
        $data['listTujuan'] = $this->listTujuan;
        return view('livewire.tujuan',$data);
    }
}

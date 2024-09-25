<?php

namespace App\Http\Livewire;

use App\Models\TarifRetribusi as ModelsTarifRetribusi;
use Livewire\Component;

class TarifRetribusi extends Component
{
    public $listTarifRetribusi;
    public function render()
    {
        $this->listTarifRetribusi = ModelsTarifRetribusi::get();
        $data['listTarifRetribusi'] = $this->listTarifRetribusi;
        return view('livewire.tarif-retribusi');
    }
}

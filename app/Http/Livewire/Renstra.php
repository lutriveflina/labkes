<?php

namespace App\Http\Livewire;
use App\Models\Renstra as ModelsRenstra;
use Livewire\Component;

class Renstra extends Component
{
    public $listRenstra;
    public function render()
    {
        $this->listRenstra = ModelsRenstra::get();
        $data['listRenstra'] = $this->listRenstra;
        return view('livewire.renstra');
    }
}

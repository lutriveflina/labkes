<?php

namespace App\Http\Livewire;
use App\Models\Sejarah as ModelsSejarah;

use Livewire\Component;

class Sejarah extends Component
{
    public $listSejarah;
    public function render()
    {
        $this->listSejarah = ModelsSejarah::get();
        $data['listSejarah'] = $this->listSejarah;
        return view('livewire.sejarah', $data);
    }
}

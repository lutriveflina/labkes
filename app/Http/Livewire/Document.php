<?php

namespace App\Http\Livewire;
use App\Models\Document as ModelsDocument;
use Livewire\Component;

class Document extends Component
{
    public $listDocument;
    public function render()
    {
        $this->listDocument = ModelsDocument::get();
        $data['listDocument'] = $this->listDocument;
        return view('livewire.document');
    }
}

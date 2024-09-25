<?php

namespace App\Http\Livewire;
use App\Models\Faq as ModelsFaq;

use Livewire\Component;

class Faq extends Component
{
    public $listFaq;
    public function render()
    {
        $this->listFaq = ModelsFaq::get();
        $data['listFaq'] = $this->listFaq;
        return view('livewire.faq', $data);
    }
}

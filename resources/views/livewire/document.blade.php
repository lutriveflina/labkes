@extends('layouts.app')

@section('content')

 <div class="sub-banner">
    <img class="banner-img" src="{{ asset('/assets/images/sub-banner/sub-banner.jpg') }}" alt="" height="350px" width="30px">
    <div class="detail">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="paging">
                        <h2>Pola Tarif Pelayanan</h2>
                        <ul>
                        <li><a href="{{ route('home') }}">home</a></li>
                        <li><a>Pola Tarif Pelayanan</a></li>
                        </ul>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>	


<div class="content">
    <div class="departments">
        @if ($listDocument != null)
            @foreach ($listDocument as $item)
                <div class="investigation">
                    <div class="container">
                        <iframe src="{{ asset('storage/' . $item->file) }}"  align="top" height="620" width="100%" frameborder="0" scrolling="auto"></iframe>
                    </div>
                </div>
            @endforeach
        @endif
    </div>
</div>

@endsection
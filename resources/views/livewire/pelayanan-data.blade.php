{{-- <div>
    <div class="row mt-100">
        <div class="col-md-12 text-center">
            <h2>Pelayanan</h2>
            <div class="small-border"></div>
        </div>
        @foreach ($listPelayanan as $item)
            @if ($item->nama_pelayanan != 'Kegiatan' && ($item->nama_pelayanan != 'Kegiatan'))
                <div class="col-md-3 wow fadeInRight" data-wow-delay=".2s">
                    <div class="mask">
                        <div class="cover">
                            <div class="c-inner">
                                <a href="{{ route('pelayanan.detail', ['id' => $item->id]) }}">
                                    <h3 class="text-center" style="margin-top: 25px !important"><span>{{ $item->nama_pelayanan }}</span></h3>
                                </a>
                                <p>{{ $item->deskripsi }}</p>
                                <div class="spacer20"></div>
                                <a href="{{ route('pelayanan.detail', ['id' => $item->id]) }}"
                                    class="btn-custom capsule">Read
                                    more</a>
                            </div>
                        </div>
                        <img src="{{ asset($item->gambar) }}" alt="" class="img-responsive" />
                    </div>
                </div>
            @endif
        @endforeach
    </div>
</div> --}}

@extends('layouts.app')
@section('content')

<div class="sub-banner">
    <img class="banner-img" src="{{ asset('/assets/images/sub-banner/sub-banner.jpg') }}" alt="" height="350px" width="30px">
    <div class="detail">
     <div class="container">
         <div class="row">
             <div class="col-md-12">
                 <div class="paging">
                     <h2>Pelayanan</h2>
                     <ul>
                     <li><a href="{{ route('home') }}">Home </a></li>
                     <li><a>Pelayanan</a></li>
                     </ul>
                 </div>
                 
             </div>
         </div>
     </div>
 </div>
</div>	
<div class="content">
    <div class="main-appointment-form">
        <div class="container">
            {{-- {{ dd($listPelayanan) }} --}}
            @if ($listPelayanan != null)
                {{-- @foreach ($listPelayanan as $item) --}}
                    <div class="row">
                        <div class="col-md-12">
                            <div class="main-title text-center">
                                <h2><span>{{ $listPelayanan->nama_pelayanan}}</span></h2>
                                <p style="text-align: justify">{{$listPelayanan->deskripsi  }}</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-12">
                            <div class="icon-center">
                                <img src="{{ $listPelayanan->gambar }}"  style="width: 500px; height: 620px; object-fit: fill;" target ="_blank">
                                {{-- <img src="{{ asset('/assets/images/sub-banner/sub-banner.jpg') }}"  alt=""> --}}
                            </div>
                        </div>
                    </div>
                {{-- @endforeach --}}
            @endif
        </div>
    </div>
</div>
@endsection
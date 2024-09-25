@extends('layouts.app')

@section('content')


<div class="sub-banner">
    <img class="banner-img" src="{{ asset('/assets/images/sub-banner/sub-banner.jpg') }}" alt="" height="350px"
        width="30px">
    <div class="detail">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="paging">
                        <h2>Layanan Laboratorium Kesehatan</h2>
                        <ul>
                            <li><a href="{{ route('home') }}">home</a></li>
                            <li><a>Standar Pelayanan Puskesmas</a></li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>


<div class="content">


    <!--Start Specialists-->
    <div class="meet-specialists">
        <div class="container">

            <div class="row">
                <div class="col-md-12">
                    <div class="main-title">
                        <h2 style="text-align: center;"><span>Layanan</span> Utama</h2><br>
                    </div>
                </div>
            </div>

            <div id="demo">
                <div class="container">
                    <div class="row">
                        <div class="span12">
                            <div id="owl-demo4" class="owl-carousel">
                                @foreach ($listLayananLabkes as $item)
                                <div class="post item">

                                    <div class="gallery-sec">
                                        <div class="image-hover img-layer-slide-left-right">
                                            <img src="{{ ('storage/' . $item->gambar) }}" class="">
                                        </div>
                                    </div>

                                    <div class="detail">
                                        <h6>{{ $item->nama_layanan_puskesmas }}</h6>
                                        <p>{{$item->deskripsi}}</p>
                                        <a href="{{ route('labkes.detail', ['id' => $item->id]) }}">- Baca
                                            Selengkapnya</a>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--End Specialists-->
</div>

@endsection
@push('styles')
<style>
    p {
        display: -webkit-box;
        max-width: 400px;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
        overflow: hidden;
        text-overflow: ellipsis;
    }
</style>
@endpush

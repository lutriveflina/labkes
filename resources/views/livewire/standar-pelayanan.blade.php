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
                        <h2><span>Layanan</span> Utama</h2>
                        <p> Dapatkan pelayanan kami melalui menu di bawah yang tersedia di Labkes Pemkot Bukittinggi.
                        </p>
                    </div>
                </div>
            </div>

            <div id="demo">
                <div class="container">
                    <div class="row">
                        <div class="span12">
                            @foreach ($listLayananLabkes as $item)
                            <div id="owl-demo4" class="owl-carousel">

                                <div class="post item">

                                    <div class="gallery-sec">
                                        <div class="image-hover img-layer-slide-left-right">
                                            <img src="{{ ('storage/' . $item->gambar) }}" class="">
                                        </div>
                                    </div>

                                    <div class="detail">
                                        <h6>{{ $item->nama_layanan_puskesmas }}</h6>
                                        <p>{{$item->deskripsi}}</p>
                                        <a href="team-member-detail.html">- View Profile</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--End Specialists-->
</div>

@endsection

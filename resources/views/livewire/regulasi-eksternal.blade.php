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
                        <h2>Regulasi Eksternal</h2>
                        <ul>
                            <li><a href="{{ route('home') }}">home</a></li>
                            <li><a>Regulasi Eksternal</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--Start Content-->
<div class="content">
    <div class="departments">
        <div class="investigation">
            <div class="container">

                <div class="row">
                    <div class="col-md-12">
                        <div class="main-title">
                            <h4><span style="text-align: justify">PEMERINTAH KOTA BUKITTINGGI
                                    LABORATORIUM KESEHATAN
                        </div>
                    </div>
                </div>

                <div class="row">
                    @if ($listRegulasiEksternal != null)
                    @foreach ($listRegulasiEksternal as $item)
                    <div class="col-md-12">
                        <div class="investigation-sec">
                            <iframe src="{{ asset('storage/' . $item->file) }}" align="top" height="620" width="100%"
                                frameborder="0" scrolling="auto"></iframe>
                        </div>
                    </div>
                    @endforeach
                    @endif

                </div>
                <div>
                </div>
            </div>

            @endsection

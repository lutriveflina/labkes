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
                        <h2>Waktu Layanan Laboratorium</h2>
                        <ul>
                            <li><a href="{{ route('home') }}">home</a></li>
                            <li><a>Waktu Layanan Puskesmas</a></li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>


<div class="content">
    <!-- <div class="departments">
        {{-- @if ($listWaktuLayanan != null)
            @foreach ($listWaktuLayanan as $item)
                <div class="investigation">
                    <div class="container">
                        <iframe src="{{ asset('storage/' . $item->file) }}"  align="top" height="620" width="100%" frameborder="0" scrolling="auto"></iframe>
                    </div>
                </div>
            @endforeach
        @endif --}}
    </div> -->

    <div class="member-detail">
        <div class="container">

            <div class="row">
                <div class="col-md-12">
                    <div class="main-title mb-4">

                        <h5>{{ $title }}</h5>
                        @if ($listWaktuLayanan != null)
                        @foreach ($listWaktuLayanan as $item)
                        <div id="demo">
                            <div class="row">
                                <div class="span12">
                                    <div class="post item">
                                        <div class="col-md-12">

                                            <div class="team-detail" style="margin: 50px;">
                                                <ul>
                                                    <li><span class="title">Komponen</span> <span
                                                            class="title">Uraian</span></li>
                                                </ul>

                                                <ul>
                                                    <li><span class="title">{!! $item->Komponen !!} </span> {!!
                                                        $item->deskripsi !!}</li>
                                                </ul>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                        @endif

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

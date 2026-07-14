@extends('layouts.app')

@section('content')
<div class="service-list-page">
    <div class="sub-banner">
        <img class="banner-img" src="{{ asset('/assets/images/sub-banner/sub-banner.jpg') }}"
            alt="Layanan Laboratorium Kesehatan">
        <div class="detail">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="paging">
                            <h1>Jenis Layanan Laboratorium Kesehatan</h1>
                            <ul>
                                <li><a href="{{ route('home', [], false) }}">Home</a></li>
                                <li><a aria-current="page">Jenis Layanan</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="service-list" aria-labelledby="service-list-title">
        <div class="container">
            <div class="main-title text-center">
                <h2 id="service-list-title"><span>Layanan</span> Utama</h2>
                <p>Pilih layanan untuk melihat informasi lengkap.</p>
            </div>

            <div class="row service-grid">
                @forelse ($listLayananLabkes as $item)
                    <div class="col-sm-6 col-md-4 service-column">
                        <article class="service-card">
                            <a href="{{ route('labkes.detail', ['id' => $item->id], false) }}" class="service-image-link">
                                <img src="{{ $item->gambar ? asset('storage/' . ltrim($item->gambar, '/')) : asset('/assets/images/nophoto.png') }}"
                                    alt="{{ $item->nama_layanan_puskesmas }}" loading="lazy" width="640" height="420">
                            </a>
                            <div class="service-card-body">
                                <h3>
                                    <a href="{{ route('labkes.detail', ['id' => $item->id], false) }}">
                                        {{ $item->nama_layanan_puskesmas }}
                                    </a>
                                </h3>
                                <p>{{ $item->description_excerpt }}</p>
                                <a class="service-read-more" href="{{ route('labkes.detail', ['id' => $item->id], false) }}"
                                    aria-label="Baca selengkapnya tentang {{ $item->nama_layanan_puskesmas }}">
                                    Baca selengkapnya
                                </a>
                            </div>
                        </article>
                    </div>
                @empty
                    <div class="col-md-12">
                        <p class="service-empty">Informasi jenis layanan belum tersedia.</p>
                    </div>
                @endforelse
            </div>
        </div>
    </section>
</div>
@endsection

@push('styles')
<style>
    .service-list-page .paging h1 {
        color: #fff;
        font-size: 34px;
        margin: 0 0 10px;
    }
    .service-list { padding: 70px 0; }
    .service-list .main-title { margin-bottom: 35px; }
    .service-list .main-title p { margin-top: 10px; }
    .service-grid { display: flex; flex-wrap: wrap; }
    .service-column { display: flex; margin-bottom: 30px; }
    .service-card {
        background: #fff;
        border: 1px solid #e6eceb;
        border-radius: 12px;
        box-shadow: 0 5px 18px rgba(0, 0, 0, .07);
        display: flex;
        flex-direction: column;
        overflow: hidden;
        width: 100%;
    }
    .service-image-link { display: block; overflow: hidden; }
    .service-image-link img {
        display: block;
        height: 230px;
        object-fit: cover;
        transition: transform .25s ease;
        width: 100%;
    }
    .service-image-link:hover img { transform: scale(1.03); }
    .service-card-body { display: flex; flex: 1; flex-direction: column; padding: 24px; }
    .service-card-body h3 { font-size: 20px; line-height: 1.35; margin: 0 0 12px; }
    .service-card-body h3 a { color: #222; }
    .service-card-body p { color: #666; line-height: 1.7; margin-bottom: 18px; }
    .service-read-more { color: #22877b; font-weight: 600; margin-top: auto; }
    .service-read-more:focus, .service-card-body h3 a:focus, .service-image-link:focus {
        outline: 3px solid #f0b429;
        outline-offset: 3px;
    }
    .service-empty { background: #f5f8f7; border-radius: 8px; padding: 24px; text-align: center; }
    @media (max-width: 767px) {
        .service-list { padding: 45px 0; }
        .service-list-page .paging h1 { font-size: 27px; }
        .service-image-link img { height: 210px; }
    }
</style>
@endpush

@extends('layouts.app')

@section('content')
<div class="service-detail-page">
    <div class="sub-banner">
        <img class="banner-img" src="{{ asset('/assets/images/sub-banner/sub-banner.jpg') }}"
            alt="Detail layanan Laboratorium Kesehatan">
        <div class="detail">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="paging">
                            <h1>Detail Layanan Laboratorium</h1>
                            <ul>
                                <li><a href="{{ route('home', [], false) }}">Home</a></li>
                                <li><a href="{{ route('layanan-labkes', [], false) }}">Jenis Layanan</a></li>
                                <li><a aria-current="page">{{ $labkes->nama_layanan_puskesmas }}</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <main class="service-detail-content">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <article class="service-article">
                        <img src="{{ $labkes->gambar ? asset('storage/' . ltrim($labkes->gambar, '/')) : asset('/assets/images/nophoto.png') }}"
                            alt="{{ $labkes->nama_layanan_puskesmas }}" class="service-main-image"
                            width="900" height="600">
                        <div class="service-description">
                            <h2>{{ $labkes->nama_layanan_puskesmas }}</h2>
                            <div>{!! nl2br(e($labkes->plain_description)) !!}</div>
                        </div>
                    </article>

                    <div class="service-actions">
                        <a class="back-to-services" href="{{ route('layanan-labkes', [], false) }}">&larr; Kembali ke Jenis Layanan</a>
                        <div class="share-service" aria-label="Bagikan layanan">
                            <span>Bagikan:</span>
                            <a href="https://www.facebook.com/sharer/sharer.php?u={{ urlencode(url()->current()) }}"
                                target="_blank" rel="noopener noreferrer" aria-label="Bagikan melalui Facebook">Facebook</a>
                            <a href="https://api.whatsapp.com/send?text={{ urlencode($labkes->nama_layanan_puskesmas . ' ' . url()->current()) }}"
                                target="_blank" rel="noopener noreferrer" aria-label="Bagikan melalui WhatsApp">WhatsApp</a>
                        </div>
                    </div>
                </div>

                <aside class="col-md-4" aria-labelledby="other-services-title">
                    <div class="other-services">
                        <h2 id="other-services-title" class="bar-title">Layanan Lainnya</h2>
                        @forelse ($otherServices as $item)
                            <article class="other-service-item">
                                <a href="{{ route('labkes.detail', ['id' => $item->id], false) }}">
                                    <img src="{{ $item->gambar ? asset('storage/' . ltrim($item->gambar, '/')) : asset('/assets/images/nophoto.png') }}"
                                        alt="{{ $item->nama_layanan_puskesmas }}" loading="lazy" width="120" height="90">
                                </a>
                                <h3>
                                    <a href="{{ route('labkes.detail', ['id' => $item->id], false) }}">
                                        {{ $item->nama_layanan_puskesmas }}
                                    </a>
                                </h3>
                            </article>
                        @empty
                            <p>Belum ada layanan lainnya.</p>
                        @endforelse
                    </div>
                </aside>
            </div>
        </div>
    </main>
</div>
@endsection

@push('styles')
<style>
    .service-detail-page .paging h1 { color: #fff; font-size: 34px; margin: 0 0 10px; }
    .service-detail-page .paging li:last-child a { cursor: default; }
    .service-detail-content { padding: 70px 0; }
    .service-article { background: #fff; border: 1px solid #e6eceb; border-radius: 12px; overflow: hidden; }
    .service-main-image { display: block; height: auto; max-height: 650px; object-fit: cover; width: 100%; }
    .service-description { padding: 30px; }
    .service-description h2 { color: #222; font-size: 28px; line-height: 1.35; margin: 0 0 20px; }
    .service-description div { color: #555; font-size: 16px; line-height: 1.85; overflow-wrap: anywhere; }
    .service-actions { align-items: center; display: flex; justify-content: space-between; padding: 24px 0; }
    .back-to-services { color: #22877b; font-weight: 600; }
    .share-service span { margin-right: 8px; }
    .share-service a { margin-left: 10px; }
    .other-services { background: #f7f9f8; border-radius: 12px; padding: 24px; }
    .other-services .bar-title { font-size: 21px; margin: 0 0 22px; }
    .other-service-item { align-items: center; border-bottom: 1px solid #dde5e3; display: flex; gap: 14px; padding: 15px 0; }
    .other-service-item:last-child { border-bottom: 0; }
    .other-service-item img { border-radius: 7px; height: 76px; object-fit: cover; width: 100px; }
    .other-service-item h3 { font-size: 15px; line-height: 1.45; margin: 0; }
    .other-service-item h3 a { color: #333; }
    .service-detail-page a:focus { outline: 3px solid #f0b429; outline-offset: 3px; }
    @media (max-width: 991px) { .other-services { margin-top: 20px; } }
    @media (max-width: 767px) {
        .service-detail-page .paging h1 { font-size: 27px; }
        .service-detail-content { padding: 45px 0; }
        .service-description { padding: 22px; }
        .service-description h2 { font-size: 23px; }
        .service-actions { align-items: flex-start; flex-direction: column; gap: 15px; }
    }
</style>
@endpush

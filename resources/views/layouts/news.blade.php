<!--Start Latest News-->
<style>
    .detail-btn {
        margin: 35px 0 0 0;
        background-color: #02adc6;
        padding: 12px 30px;
        display: inline-block;
        color: white !important;
        font-size: 15px;
        border-radius: 5px;
        text-align: center !important;
        position: relative;
        text-transform: uppercase;
        outline: none !important;
        color: var(--oxpins-black);
    }

    h4 {
        display: -webkit-box;
        max-width: 400px;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
        overflow: hidden;
        text-overflow: ellipsis;
    }
</style>
<div class="latest-news dark-back">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="main-title">
                    <h2><span>Berita</span> Laboratorium Kesehatan</h2>
                </div>
            </div>
        </div>

        <div id="latest-news">
            <div class="container">
                <div class="row">
                    <div class="span12">
                        <div id="owl-demo" class="owl-carousel">
                            @if ($listBeritaKegiatan != null)
                            @foreach ($listBeritaKegiatan as $item)
                            <div class="post item">
                                <img class="lazyOwl" src="{{ asset('storage/' . $item->foto_utama) }}"
                                    style="height: 300px; object-fit: cover" target="_blank">
                                <div class="detail">
                                    <h4><a href="{{ route('berita.single', ['id' => $item->id]) }}">{{ $item->judul
                                            }}</a></h4>
                                    {{-- {!! $item->konten !!} --}}
                                    <span><i class="icon-clock3"></i> {{ $item->tanggal_kegiatan }}</span>
                                    <a href="{{ route('berita.single', ['id' => $item->id]) }}"
                                        style="text-align: right"> BACA SELENGKAPNYA</a>
                                </div>
                            </div>
                            @endforeach
                            @endif
                        </div>
                    </div>

                    <!-- <div class="detail-btn">
                        <a href="{{ route('berita.detail') }}" style="color: white">LIHAT SEMUA KEGIATAN</a>
                    </div> -->
                </div>
            </div>
        </div>
    </div>
</div>
<!--End Latest News-->

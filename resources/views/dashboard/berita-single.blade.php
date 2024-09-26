@extends('layouts.app')
<style>
    .detail li {
        list-style: unset !important;
    }
</style>
@section('content')

<div class="sub-banner">
    <img class="banner-img" src="{{ asset('/assets/images/sub-banner/sub-banner.jpg') }}" alt="">
    <div class="detail">
        <div class="container">
            <div class="row">
                <div class="col-md-12">

                    <div class="paging">
                        <h2>Berita Detail</h2>
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li><a href="#.">berita</a></li>
                            <li><a>Latest Post Detail</a></li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

<!--End Banner-->

<!--Start Content-->
<div class="content">

    <div class="news-posts">
        <div class="container">
            <div class="row">

                <div class="col-md-8">

                    <div class="news-detail">
                        <img alt="" src="{{ asset('storage/' . $beritaKegiatan->foto_utama) }}" class="img-fullwidth"
                            style="border-radius: 20px; max-height: 750px; object-fit: cover">
                        <div class="detail">
                            <span class="date">{{ $beritaKegiatan->tanggal_kegiatan }} /Post By {{
                                $beritaKegiatan->userPembuat->name }}</span>
                            <h3>{{ $beritaKegiatan->judul }}</h3>
                            {!! $beritaKegiatan->konten !!}

                            {{-- <div class="quote"><img src="{{ asset('/assets/images/quote.jpg') }}" alt="">
                                <span>Kekayaan yang paling utama adalah kesehatan.</span>
                            </div> --}}
                        </div>
                    </div>


                    <div class="share-post">
                        <span>Share this Post!</span>
                        <div class="social-icons">
                            <a href="https://www.facebook.com/p/UPTD-Laboratorium-Kesehatan-Bukittinggi-1000665420 15986/?locale=id_ID"
                                class="fb"><i class="icon-euro"></i></a>
                            <a href="https://www.instagram.com/labkes.bukittinggi" class="ig"><i
                                    class="icon-instagram"></i></a>

                            <a href="htttps://www.google.com" class="gp"><i class="icon-google-plus"></i></a>
                        </div>
                    </div>

                    <div class="leave-reply">

                    </div>
                </div>

                <div class="col-md-4">

                    <div class="recent-posts">
                        <h6 class="bar-title">Recent Posts</h6>
                        @foreach ($recentPost as $item)
                        <div class="post-sec">
                            <a href="{{ route('berita.single', ['id' => $item->id]) }}"><img
                                    src="{{ asset('storage/' . $item->foto_utama) }}" alt=""></a>
                            <a href="{{ route('berita.single', ['id' => $item->id]) }}" class="title">{{ $item->judul
                                }}</a>
                            <span class="date">{{ date('d M', strtotime($item->tanggal_kegiatan)) }}</span>
                        </div>
                        @endforeach
                    </div>
                    <div class="clear"></div>

                    <div class="tags">
                        <h6 class="bar-title">Tags</h6>
                        <div class="all-tags">
                            <a href="#.">Mental Health</a>
                            <a href="#.">Laboratorium</a>
                            <a href="#.">Imunologi</a>
                            <a href="#.">Kesehatan</a>
                            <a href="#.">Website</a>
                        </div>
                    </div>
                    <div class="clear"></div>

                </div>

            </div>
        </div>
    </div>

</div>
<!--End Content-->

@endsection

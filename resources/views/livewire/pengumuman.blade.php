@extends('layouts.app' )

@section('content')

<div class="sub-banner">

    <img class="banner-img" src="{{ asset('/assets/images/sub-banner/sub-banner.jpg') }}" alt="" height="350px"
        width="30px">
    <div class="detail">
        <div class="container">
            <div class="row">
                <div class="col-md-12">

                    <div class="paging">
                        <h2>Pengumuman </h2>
                        <ul>
                            <li><a href="{{ route('home') }}">Home</a></li>
                            <!-- <li><a href="#.">Blog</a></li> -->
                            <li><a>Pengumuman</a></li>
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
    <div class="news-masonary">
        <div class="container">
            <div class="row">
                @if ($listPengumuman != null)
                @foreach ($listPengumuman as $item)
                <div class="col-md-4">
                    <div class="border" style="border-radius: 10px">
                        <div class="news-sec">
                            <img src="{{ asset('storage/' . $item->foto_utama) }}"
                                style="height: 300px; object-fit: cover" target="_blank">
                            <div class="detail">
                                <span>{{ $item->tanggal_pengumuman }} / Post By {{ $item->userPembuat->name }}</span>
                                <h4>{{ $item->judul }}</h4>
                                <div style="height: 100px; overflow: hidden; text-overflow: ellipsis">
                                    {!! $item->konten !!}
                                </div>
                                <a href="{{ route('pengumuman.detail', ['id' => $item->id]) }}">Selengkapnya...</a>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
                @endif
            </div>

            {{-- <div class="easyPaginateNav" style="width: 1200px;">
                <div class="containerNav">
                    <a href="" title="Previous" rel="" class="prev">&lt; Prev</a>
                    <a href="#page:1" title="Page 1" rel="1" class="page current">1</a>
                    <a href="#page:2" title="Page 2" rel="2" class="page">2</a>
                    <a href="#page:3" title="Page 3" rel="3" class="page">3</a>
                    <a href="" title="Next" rel="" class="next">Next &gt;</a>
                </div>
            </div> --}}
        </div>
    </div>
</div>
<!--End Content-->


@endsection

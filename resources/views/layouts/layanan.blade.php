<!--Start Welcome-->

<div class="welcome dark-back">
    <div class="container">

        <div class="row">
            <div class="col-md-12">
                <div class="main-title">
                    <h2><span>Layanan</span> Laboratorium Kesehatan</h2>
                    <p>Berikut beberapa Layanan di Laboratorium Kesehatan.</p>
                </div>
            </div>
        </div>
        <div id="tabbed-nav">
            <ul>
                @foreach($listLayananPuskesmas as $item)

                <li><a>{{ $item->nama_layanan_puskesmas }}</a></li>
                @endforeach
            </ul>
            <div>
                @foreach ($listLayananPuskesmas as $item)
                <div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="welcome-serv-img">
                                <img src="{{ ('storage/' . $item->gambar) }}" class=""
                                    style="width: 530px; height: 350px; object-fit: cover; border-radius: 20px" alt="">
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="detail">
                                <h4>{{ $item->nama_layanan_puskesmas }}</h4>
                                <p style="text-align: justify">{{$item->deskripsi}}</p>
                                <a href="{{ route('labkes.detail', ['id' => $item->id]) }}">Baca
                                    Selengkapnya</a>

                            </div>
                        </div>
                    </div>
                </div>

                @endforeach
            </div>
        </div>
    </div>
</div>
<!--End Welcome-->

<style>
    .procedure-text ul li {
        margin: 0 10px 5px 18px !important;
        width: auto !important;
        color: black !important;
    }

    .procedure-text ul li ol {
        display: flex;
        flex-direction: column;
    }

    div.card {
        /* width: 250px; */
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        text-align: center;
    }
</style>

<div class="sub-banner">
    <img class="banner-img" src="{{ asset('/assets/images/sub-banner/sub-banner.jpg') }}" alt="" height="350px"
        width="30px">
    <div class="detail">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="paging">
                        <h2>Tata Nilai</h2>
                        <ul>
                            <li><a href="{{ route('home') }}">home</a></li>
                            <li><a>Tata Nilai</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--Start Content-->
<div class="content">
    <div class="procedures">
        <div class="container">

            <div class="row">
                <div class="col-md-12">
                    <div class="about-cancer-center card">
                        <h4>Tata Nilai</h4>
                        @if ($listTataNilai != null)
                        @foreach ($listTataNilai as $item)
                        <div style="text-align: justify;">{!! $item->deskripsi!!}</div>
                        @endforeach
                        @endif
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

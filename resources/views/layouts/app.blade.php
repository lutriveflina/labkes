<!DOCTYPE html>
<html>
<style>
    /* css wa */
    .btn-floating {
        position: fixed;
        right: 25px;
        overflow: hidden;
        width: 55px;
        height: 55px;
        border-radius: 50px;
        border: 0;
        z-index: 9999;
        color: white;
        transition: .2s;
    }

    .btn-floating:hover {
        width: auto;
        padding: 0 20px;
        cursor: pointer;
    }

    .btn-floating span {
        font-size: 16px;
        margin-left: 5px;
        transition: .2s;
        line-height: 0px;
        display: none;
    }

    .btn-floating:hover span {
        display: inline-block;
    }

    .btn-floating:hover img {
        margin-bottom: -3px;
    }

    .btn-floating.whatsapp {
        bottom: 25px;
        background-color: #34af23;
        border: 2px solid #fff;
    }

    .btn-floating.whatsapp:hover {
        background-color: #1f7a12;
    }
</style>
@livewireStyles
@include('template.head')

<body>

    {{-- @include('template.top-bar') --}}
    @include('template.header')
    <style>
        #procedures-faq.accordion:first-child(display:block;
        )
    </style>

    <!--Start Content-->

    <div class="content">
        <div id="top"></div>

        @yield('content')
        <!-- <div style="position:fixed;right:20px;bottom:150px; z-index: 9999;"> -->
        <a class="navbar-sub-item" href="https://siluki-hebat.bukittinggikota.go.id/" title="Info Proses">
            <picture class="nbi-picture">
                <source srcset type="image/webp">
                <img src="{{ asset('/assets/images/vertte_64.png')}}" style="width: 50px; height: 50px;"
                    alt="Info Proses">
            </picture>
            <p class="nbi-text" style="color: #22877b;"><b>Daftar Sample </b></p>
        </a>
        <!-- </div> -->

        <a href="https://api.whatsapp.com/send?phone=6285191926122" target="_blank">
            <button class="btn-floating whatsapp">
                <img src="{{ asset('/assets/images/wa.png')}}" alt="whatsApp" style="width: 50px; height: 50px;">
                <span>Konsultasi Online</span>
            </button>
        </a>

    </div>
    <!--End Content-->

    @include('template.footer')
    @include('template.script')
    @livewireScripts

    @stack('script')

</body>
<style>
    .navbar-sub-item {
        transition: all 0.2s ease;
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-align-items: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        -webkit-box-pack: center;
        -webkit-justify-content: center;
        -ms-flex-pack: center;
        justify-content: center;
        -webkit-flex-flow: column nowrap;
        -ms-flex-flow: column nowrap;
        flex-flow: column nowrap;
        margin-right: 8px;
        position: fixed;
        right: 25px;
        bottom: 210px;
        z-index: 9999;

    }

    .header-middle {
        background-color: rgba(164, 188, 43, 0.6);
    }


    .aplikasi {
        position: absolute;
        bottom: 50%;
        right: 50%;
        width: 100%;
        -webkit-transform: translateX(-50%);
        transform: translateX(-50%);
        z-index: 100%;
    }

    .aplikasi>.container {
        position: relative;
        padding: 0;
    }

    .item_aplikasi {
        width: 100%;
        max-width: 1200px;
        padding-bottom: 20px;
    }

    .item_aplikasi {
        margin-top: 30px;
        height: 25px;
        -webkit-box-flex: 0;
        -ms-flex: 0 0 270px;
        flex: 0 0 270px;
        max-width: 270px;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -ms-flex-direction: column;
        flex-direction: column;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        justify-content: center;
        background-color: #3a9d1f00;
        text-align: center;
        -webkit-transition: all .3s linear;
        transition: all .3s linear;
        border-radius: 8px;
        cursor: pointer;
        color: #ffffff;
    }

    .item_aplikasi:hover {
        margin-top: 20px;
        background-color: #ffffff00;
    }
</style>

</html>

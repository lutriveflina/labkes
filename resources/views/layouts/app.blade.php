<!DOCTYPE html>
<html>
<style>
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
        <!-- <div style="position:fixed;right:200px;bottom:20px;"> -->
        <a href="https://api.whatsapp.com/send?phone=6285191926122" target="_blank">
            <button class="btn-floating whatsapp">
                <img src="{{ asset('/assets/images/wa.png')}}" alt="whatsApp" style="width: 50px; height: 50px;">
                <span>Konsultasi Online</span>
            </button>
        </a>
        <!-- </div> -->

    </div>
    <!--End Content-->


    @include('template.footer')
    @include('template.script')
    @livewireScripts

    @stack('script')

</body>

</html>

<main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">

    <!-- navbar -->
    @include('template_admin.navbar')
    <!-- end navbar -->


    <div class="container-fluid py-4">

      @yield('content')

      <!-- footer -->
      @include('template_admin.footer')

    </div>
  </main>

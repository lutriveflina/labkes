<!--   Core JS Files   -->
<script src="{{asset('/assets_admin/js/core/popper.min.js')}}"></script>
<script src="{{asset('/assets_admin/js/core/bootstrap.min.js')}}"></script>
<script src="{{asset('/assets_admin/js/plugins/perfect-scrollbar.min.js')}}"></script>
<script src="{{asset('/assets_admin/js/plugins/smooth-scrollbar.min.js')}}"></script>
<script src="{{asset('/assets_admin/js/plugins/chartjs.min.js')}}"></script>
<script src="{{asset('/assets_admin/js/custom.js')}}"></script>
<!-- Github buttons -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
<!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
<script src="{{ asset('/assets_admin/js/jquery.slim.min.js') }}"></script>
<script src="{{asset('/assets_admin/js/soft-ui-dashboard.min.js?v=1.0.7')}} "></script>
<script src="{{asset('/assets_admin/js/jquery-3.6.3.min.js')}} "></script>
<script src="{{asset('/assets_admin/js/jquery.dataTables.min.js')}} "></script>
<script src="{{asset('/assets_admin/js/dataTables.bootstrap5.min.js')}} "></script>
<script src="{{ asset('/assets_admin/js/bootstrap.bundle.min.js') }}"></script>
<script src="{{ asset('assets_admin/js/select2.full.min.js') }}"></script>
<script src="https://cdn.tiny.cloud/1/2btqppttepo6aydnn8xn23hi59g27djbwvywov1rsx85wg7j/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
<script type="text/javascript" src="{{ asset('/assets_admin/js/toastify-js.js') }}"></script>
<script type="text/javascript" src="{{ asset('/assets_admin/js/sweetalert2@11.js') }}"></script>

@yield('js')
@livewireScripts
@stack('js')

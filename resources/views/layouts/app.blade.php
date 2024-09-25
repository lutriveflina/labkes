<!DOCTYPE html>
<html>
@livewireStyles
@include('template.head')
  <body>

  {{-- @include('template.top-bar') --}}
  @include('template.header')
	<style>
    #procedures-faq.accordion:first-child(
        display:block;
    )
</style>

   <!--Start Content-->
   <div class="content">
    <div id="top"></div>
    @yield('content')

   </div>
   <!--End Content-->
  @include('template.footer')
  @include('template.script')
  @livewireScripts

  @stack('script')
</body>
</html>

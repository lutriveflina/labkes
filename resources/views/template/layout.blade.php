@extends('layouts.app')
@section('content')
@include('template.time')
@include('layouts.banner')
@include('layouts.layanan2')
@include('layouts.layanan')
{{-- @include('layouts.pegawai') --}}
@include('layouts.qoute')
@include('layouts.news')
@endsection
@push('js')

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.2.0/chart.umd.js"
    integrity="sha512-B51MzT4ksAo6Y0TcUpmvZnchoPYfIcHadIaFqV5OR5JAh6dneYAeYT1xIlaNHhhFAALd5FLDTWNt/fkxhwE/oQ=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>

@endpush

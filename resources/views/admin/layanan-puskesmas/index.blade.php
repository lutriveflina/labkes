@extends('template_admin.layout')

@section('content')
@include('helper.alert-message')



<div class="row">
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-3">
                <div class="d-flex align-items-center justify-content-between">
                    <h6>Layanan Laboratorium</h6>
                    <div>

                        <a href="{{ route('admin.layanan-puskesmas.form') }}" class="btn btn-sm bg-gradient-primary"><i
                                class="fas fa-plus"></i> Tambah</a>
                    </div>
                </div>
            </div>
            <div class="card-body pt-0 pb-2">
                <div class="table-responsive p-0">
                    <table class="table align-items-center mb-0" id="table_layanan_puskesmas">
                        <thead>
                            <tr>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">No</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Foto
                                    Layanan Labkes</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Nama
                                </th>
                                <th class="text-secondary opacity-7">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($listLayananPuskesmas as $index => $item)
                            <tr>
                                <td class="text-sm">{{ $index + 1 }}</td>
                                <td class="text-sm">{{ $item->nama_layanan_puskesmas }}</td>
                                <td class="text-sm">
                                    <a href="{{ ('storage/' . $item->gambar) }}" target="_blank">
                                        <img src="{{ asset('storage/' . $item->gambar) }}" class=""
                                            style="width: 60px; height: 60px; object-fit: cover; border-radius: 50px"
                                            alt="">
                                    </a>
                                </td>
                                <td class="text-center">
                                    <a href="{{ route('admin.layanan-puskesmas.form', ['id_layanan_puskesmas' => $item->id]) }}"
                                        class="btn btn-sm bg-gradient-primary" data-bs-toggle="tooltip"
                                        data-bs-placement="top" title="Edit">
                                        <i class="fas fa-edit"></i> Edit
                                    </a>
                                    <button class="btn btn-sm bg-gradient-danger btn-hapus" data-bs-toggle="tooltip"
                                        data-bs-placement="top" title="Hapus" data-id="{{ $item->id }}">
                                        <i class="fas fa-trash-alt"></i> Hapus
                                    </button>
                                    <form action="{{ route('admin.layanan-puskesmas.delete', ['id' => $item->id]) }}"
                                        method="POST" id="form_hapus_{{ $item->id }}">
                                        @method('DELETE')
                                        @csrf
                                    </form>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

@section('js')
<script>
    $(document).ready(function () {
        dataTable('#table_layanan_puskesmas')

    });

    $('.btn-hapus').on('click', async function () {
        const id = $(this).data('id')
        const response = await alertConfirm('Peringatan !', 'Apakah kamu yakin ingin menghapus pesan ini ?', 'Ya, Hapus')
        if (response.isConfirmed == true) {
            $('#form_hapus_' + id).submit();
        }
    })
</script>
@endsection

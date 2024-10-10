@extends('template_admin.layout')

@section('content')
@include('helper.alert-message')
<div class="row">
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-3">
                <div class="d-flex align-items-center justify-content-between">
                    <h6>Pengumuman</h6>
                    <a href="{{ route('admin.pengumuman.form') }}" class="btn btn-sm bg-gradient-primary"><i
                            class="fas fa-plus"></i> Tambah</a>
                </div>
            </div>
            <div class="card-body pt-0 pb-2">
                <div class="table-responsive p-0">
                    <table class="table align-items-center mb-0" id="table_pengumuman">
                        <thead>
                            <tr>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">No</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Foto
                                    Utama</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Judul
                                </th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                    Content</th>
                                <!-- <th
                                    class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                    Kategori</th> -->
                                <th
                                    class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                    Tanggal Pengumuman</th>
                                <th
                                    class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                    Pembuat</th>
                                <th class="text-secondary opacity-7">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($listPengumuman as $index => $item)
                            <tr>
                                <td class="text-sm">{{ $index + 1 }}</td>
                                <td class="text-sm">
                                    <a href="{{ asset('storage/' . $item->foto_utama) }}" target="_blank">
                                        <img src="{{ asset('storage/' . $item->foto_utama) }}" class=""
                                            style="width: 100px; height: 100px; object-fit: cover; border-radius: 10px"
                                            alt="">
                                    </a>
                                </td>
                                <td class="text-sm">{{ $item->judul }}</td>
                                <td class="text-sm">
                                    <div
                                        style="max-width: 300px; max-height: 300px; overflow: hidden; text-overflow: ellipsis; overflow-wrap: break-word">
                                        <?= $item->konten ?>
                                    </div>
                                </td>

                                <td class="text-sm">{{ $item->tanggal_pengumuman }}</td>
                                <td class="text-sm">{{ $item->userPembuat->name }}</td>
                                <td class="text-center">
                                    <a href="{{ route('admin.pengumuman.form', ['id_pengumuman' => $item->id]) }}"
                                        class="btn btn-sm bg-gradient-primary" data-bs-toggle="tooltip"
                                        data-bs-placement="top" title="Edit">
                                        <i class="fas fa-edit"></i> Edit
                                    </a>
                                    <a href="{{ route('admin.pengumuman.detail', ['id' => $item->id]) }}"
                                        class="btn btn-sm bg-gradient-info" target="_blank" data-bs-toggle="tooltip"
                                        data-bs-placement="top" title="Detail">
                                        <i class="ni ni-air-baloon"></i> Detail
                                    </a>
                                    <button class="btn btn-sm bg-gradient-danger btn-hapus" data-bs-toggle="tooltip"
                                        data-bs-placement="top" title="Hapus" data-id="{{ $item->id }}">
                                        <i class="fas fa-trash-alt"></i> Hapus
                                    </button>
                                    <form action="{{ route('admin.pengumuman.delete', ['id' => $item->id]) }}"
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
        dataTable('#table_pengumuman')
        // $('#table_pengumuman').DataTable()
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

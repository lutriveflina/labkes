@extends('template_admin.layout')

@section('content')
@include('helper.alert-message')



<div class="row">
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-3">
                <div class="d-flex align-items-center justify-content-between">
                    <h6>Standar Pelayanan Laboratorium</h6>
                    <div>
                        <a href="{{ route('admin.standar-pelayanan.form') }}" class="btn btn-sm bg-gradient-primary"><i
                                class="fas fa-plus"></i> Tambah</a>
                    </div>
                </div>
            </div>
            <div class="card-body pt-0 pb-2">
                <div class="table-responsive p-0">
                    <table class="table align-items-center mb-0" id="table_standar_pelayanan">
                        <thead>
                            <tr>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">No</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Kategori
                                    Standar Pelayanan</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Komponen
                                </th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                    Deskripsi</th>
                                <th class="text-secondary opacity-7">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($listStandarPelayanan as $index => $item)
                            <tr>
                                <td class="text-sm">{{ $index + 1 }}</td>
                                <td class="text-sm">{{ $item->kat_standar->name ?? 'Invalid kategori' }}</td>
                                <td class="text-sm">{{ $item->Komponen }}</td>
                                <td class="text-sm">
                                    <div
                                        style="max-width: 500px; max-height: 500px; overflow: hidden; text-overflow: ellipsis; overflow-wrap: break-word">
                                        <?= $item->deskripsi ?>
                                    </div>
                                </td>

                                <td class="text-center">
                                    <a href="{{ route('admin.standar-pelayanan.form', ['id_standar_pelayanan' => $item->id]) }}"
                                        class="btn btn-sm bg-gradient-primary" data-bs-toggle="tooltip"
                                        data-bs-placement="top" title="Edit">
                                        <i class="fas fa-edit"></i> Edit
                                    </a>
                                    <button class="btn btn-sm bg-gradient-danger btn-hapus" data-bs-toggle="tooltip"
                                        data-bs-placement="top" title="Hapus" data-id="{{ $item->id }}">
                                        <i class="fas fa-trash-alt"></i> Hapus
                                    </button>
                                    <form action="{{ route('admin.standar-pelayanan.delete', ['id' => $item->id]) }}"
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
        dataTable('#table_standar_pelayanan')

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

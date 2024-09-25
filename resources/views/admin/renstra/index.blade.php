@extends('template_admin.layout')

@section('content')
@include('helper.alert-message')


{{-- Tabel Anggota --}}
<div class="row">
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-3">
                <div class="d-flex align-items-center justify-content-between">
                    <h6>Renstra</h6>
                    <div>
                        <a href="{{ route('admin.renstra.form') }}" class="btn btn-sm bg-gradient-primary"><i
                                class="fas fa-plus"></i> Tambah</a>
                    </div>
                </div>
            </div>
            <div class="card-body pt-0 pb-2">
                <div class="table-responsive p-0">
                    <table class="table align-items-center mb-0" id="table_document">
                        <thead>
                            <tr>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">No</th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Judul
                                </th>
                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Document
                                </th>
                                <th class="text-secondary opacity-7">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($listRenstra as $index => $item)
                            <tr>
                                <td class="text-sm">{{ $index + 1 }}</td>
                                <td class="text-sm">{{ $item->Judul }}</td>
                                <td class="text-sm">
                                    <a href="{{ asset('storage/' . $item->file) }}" target="_blank">
                                        {{ $item->file }}
                                    </a>
                                </td>
                                <td class="text-center">
                                    <a href="{{ route('admin.renstra.form', ['id_renstra' => $item->id]) }}"
                                        class="btn btn-sm bg-gradient-primary" data-bs-toggle="tooltip"
                                        data-bs-placement="top" title="Edit">
                                        <i class="fas fa-edit"></i> Edit
                                    </a>
                                    <button class="btn btn-sm bg-gradient-danger btn-hapus" data-bs-toggle="tooltip"
                                        data-bs-placement="top" title="Hapus" data-id="{{ $item->id }}">
                                        <i class="fas fa-trash-alt"></i> Hapus
                                    </button>
                                    <form action="{{ route('admin.renstra.delete', ['id' => $item->id]) }}"
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
        dataTable('#table_document')

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

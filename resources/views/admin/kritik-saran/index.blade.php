@extends('template_admin.layout')

@section('content')
    @include('helper.alert-message')
    <div class="row">
        <div class="col-12">
            <div class="card mb-4">
                <div class="card-header pb-3">
                    <div class="d-flex align-items-center justify-content-between">
                        <h6>Kritik & Saran</h6>
                    </div>
                </div>
                <div class="card-body pt-0 pb-2">
                    <div class="table-responsive p-0">
                        <table class="table align-items-center mb-0" id="table_pesan">
                            <thead>
                                <tr>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">No</th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Nama Lengkap</th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">E-mail
                                    </th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                        Subject</th>
                                    <th
                                        class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                        Pesan</th>
                                    <th class="text-secondary opacity-7">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($listPesan as $index => $item)
                                    <tr>
                                        <td class="text-sm">{{ $index + 1 }}</td>
                                        <td class="text-sm">{{ $item->name }}</td>
                                        <td class="text-sm">{{ $item->email }}</td>
                                        <td class="text-sm">{{ $item->subject }}</td>
                                        <td class="text-sm">
                                            <div style="max-width: 300px; max-height: 300px; overflow: hidden; text-overflow: ellipsis; overflow-wrap: break-word">
                                                <?= $item->pesan ?>
                                            </div>
                                        </td>
                                        <td class="text-center">
                                            <a href="mailto:{{ $item->email}}" target="_blank" class="btn btn-sm bg-gradient-primary" data-bs-toggle="tooltip" data-bs-placement="top" title="Balas">
                                                <i class="fas fa-edit"></i> Balas
                                            </a>
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
        $(document).ready(function() {
            dataTable('#table_pesan')
        });

        $('.btn-hapus').on('click', async function(){
            const id = $(this).data('id')
            const response = await alertConfirm('Peringatan !', 'Apakah kamu yakin ingin menghapus pesan ini ?', 'Ya, Hapus')
            if(response.isConfirmed == true){
                $('#form_hapus_' + id).submit();
            }
        })
    </script>
@endsection

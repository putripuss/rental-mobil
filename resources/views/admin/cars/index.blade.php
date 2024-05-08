@extends('layouts.admin')

@section('content')
    <div class="container">
        <div class="card-header d-flex justify-content-between align-items-center">
            <h3>Daftar Mobil</h3>
            <a href="{{ route('cars.create') }}" class="btn btn-primary">Tambah Data</a>
        </div>

        <link rel="stylesheet" href="https://cdn.datatables.net/1.11.6/css/dataTables.bootstrap5.min.css">
        <div class="table-responsive">
        <table class="table table-bordered data-table" id="datatable">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama Mobil</th>
                    <th>Gambar Mobil</th>
                    <th>Harga Mobil</th>
                    <th>Status Mobil</th>
                    <th width="200px">Aksi</th>
                </tr>
            </thead>
        </table>
        </div>
    </div>

    
@endsection
@section('js')
    <script type="text/javascript">
        $(document).ready(function(){
            $('#datatable').DataTable({
                processing: true,
                serverSide: true,
                ajax: "{{ route('admin.cars.index') }}",
                columns: [
                    {data: 'id', name:'id'},
                    {data: 'nama_mobil', name:'nama_mobil'},
                    // {data: 'gambar',name: 'gambar',
                    //     render: function(data, type, full, meta){
                    //         return '<img src="{{ Storage::url(' + data + ') }}" width="200" alt="' + full.nama_mobil + '">';
                    //     }
                    // },
                    {data: 'gambar', name:'gambar'},
                    {data: 'harga_sewa', name:'harga_sewa'},
                    {data: 'status', name:'status'},
                    {data: 'aksi', name:'aksi', orderable: false, searchable: false},
                ],
            });
        });
    </script>
@endsection

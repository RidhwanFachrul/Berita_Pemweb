@extends('pengelola.app')
@section('title', 'List Post - Admin')

@section('pengelola.content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 offset-md-1">
                <div class="card">
                    <div class="card-header">Daftar Kategori</div>
                    <div class="card-body">
                        @if (session('success'))
                            <div class="alert alert-success" role="alert">
                                {{ session('success') }}
                            </div>
                        @endif

                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Judul</th>
                                    <th scope="col">Seotitle</th>
                                    <th scope="col">Aktif</th>
                                    <th scope="col">Dibuat Pada</th>
                                   
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($categories as $category)
                                    <tr>
                                        <th scope="row">{{ $loop->iteration }}</th>
                                        <td>{{ $category->title }}</td>
                                        <td>{{ $category->seotitle }}</td>
                                        <td>{{ $category->active }}</td>
                                        <td>{{ $category->created_at->format('d M Y H:i:s') }}</td>
                                        <td>
                                         
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="6" class="text-center">Tidak ada kategori.</td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

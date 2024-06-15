@extends('admin.app')

@section('title', 'Admin Dashboard')

@section('admin.content')
<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6" style="margin-left: 7cm;">
                <h1 class="m-0">Dashboard</h1>
            </div><!-- /.col -->

           
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <!-- Konten Utama (3 kolom di atas) -->
            <div class="col-lg-8 " style="margin-left: 7cm;"> <!-- Menyesuaikan margin-left menjadi 3cm -->
                <!-- Small boxes (Stat box) -->
                <div class="row">
                    <!-- Total Posts -->
                    <div class="col-md-4">
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>{{ $totalPosts }}</h3>
                                <p>Total Posts</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-ios-book-outline"></i>
                            </div>
                            <a href="{{ route('admin.post.index') }}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->

                    <!-- Total Categories -->
                    <div class="col-md-4">
                        <div class="small-box bg-success">
                            <div class="inner">
                                <h3>{{ $totalCategories }}</h3>
                                <p>Total Categories</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-ios-list-outline"></i>
                            </div>
                            <a href="{{ route('admin.categories.index') }}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->

                    <!-- Inactive Posts -->
                    <div class="col-md-4">
                        <div class="small-box bg-warning">
                            <div class="inner">
                                <h3>{{ $inactivePosts }}</h3>
                                <p>Inactive Posts</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-alert-circled"></i>
                            </div>
                            <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                </div>
                <!-- /.row -->

                <!-- Total Clicks (2 kolom di bawah) -->
                <div class="row mt-4">
                    <!-- Total Users -->
                    <div class="col-md-6">
                        <div class="small-box bg-danger">
                            <div class="inner">
                                <h3>{{ $totalUsers }}</h3>
                                <p>Total Users</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-person-stalker"></i>
                            </div>
                            <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->

                    <!-- Total Clicks -->
                    <div class="col-md-6">
                        <div class="small-box bg-secondary">
                            <div class="inner">
                                <h3>{{ $totalClicks }}</h3>
                                <p>Total Clicks</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.col-lg-8 -->

            <!-- Sidebar (2 kolom di samping kanan) -->
            <div class="col-lg-3">
                <!-- Sidebar content -->
                @include('admin.sidebar')
            </div>
            <!-- /.col-lg-3 -->
        </div>
        <!-- /.row -->
    </div><!-- /.container-fluid -->
</section>
<!-- /.content -->
@endsection
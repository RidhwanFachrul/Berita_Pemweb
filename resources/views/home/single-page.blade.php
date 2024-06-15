@extends('home.app')

@section('content')
<!-- Single News Start-->
<div class="single-news">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8">
                <div class="sn-img">
                    <img src="{{ asset('storage/img/' . $post->image) }}" alt="{{ $post->title }}" class="img-fluid" />
                </div>
                <div class="sn-content">
                    <h2 class="sn-title">{{ $post->title }}</h2>
                    <p class="sn-date"><i class="far fa-clock"></i> {{ $post->created_at->format('d-M-Y') }}</p>
                    <p>
                        {{ $post->content }}
                    </p>
                    <p class="sn-views"><i class="fas fa-eye"></i> {{ $post->hits }} views</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="sidebar">
                    <div class="sidebar-widget">
                        <h2><i class="fas fa-align-justify"></i>Category</h2>
                        <div class="category">
                            <ul class="fa-ul">
                                @foreach($categories as $category)
                                <li><span class="fa-li"><i class="far fa-arrow-alt-circle-right"></i></span><a
                                        href="#">{{ $category->title }}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Single News End-->
@endsection
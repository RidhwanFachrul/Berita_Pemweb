@extends('home.app')

@section('content')
<!-- All News Start -->
<div class="all-news">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-12">
                        <h2><i class="fas fa-align-justify"></i> Semua Berita</h2>
                        <div class="row">
                            @foreach($allPosts as $post)
                            <div class="col-lg-4 mb-4">
                                <div class="mn-img">
                                    <img src="{{ asset('storage/img/' . $post->image) }}" class="img-fluid"
                                        alt="{{ $post->title }}" />
                                </div>
                                <div class="mn-content">
                                    <a class="mn-title"
                                        href="{{ route('detail.post', $post->id) }}">{{ $post->title }}</a>
                                    <a class="mn-date" href=""><i class="far fa-clock"></i>
                                        {{ $post->created_at->format('d-M-Y') }}</a>
                                    <p>{{ Str::limit($post->content, 100) }} <a
                                            href="{{ route('detail.post', $post->id) }}">Baca Selengkapnya</a></p>
                                </div>
                            </div>
                            @endforeach
                        </div>
                        <div class="row">
                            <div class="col-12 text-center mt-3">
                                {{ $allPosts->links() }}
                                <!-- Pagination -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="sidebar">
                    <div class="sidebar-widget">
                        <h2><i class="fas fa-align-justify"></i> Kategori</h2>
                        <div class="category">
                            <ul class="fa-ul">
                                @foreach($categories as $category)
                                <li><span class="fa-li"><i class="far fa-arrow-alt-circle-right"></i></span><a
                                        href="{{ route('home', $category->id) }}">{{ $category->title }}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- All News End -->
@endsection
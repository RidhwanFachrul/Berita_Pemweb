<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Display the main page.
     */
    public function home()
    {
        return view('home.main-page', [
            'posts' => Post::where('status', 'publish')->latest()->get(),
            'categories' => Category::where('active', 'yes')->get(),
        ]);
    }

    /**
     * Display the main page with additional data.
     */
    public function index()
    {
        return view('home.main-page', [
            'posts' => Post::where('status', 'publish')->latest()->get(),
            'categories' => Category::where('active', 'yes')->get(),
            'topPosts' => Post::where('status', 'publish')->latest()->take(3)->get(),
            'latestPosts' => Post::where('status', 'publish')->latest()->take(6)->get(),
            'popularPosts' => Post::where('status', 'publish')->orderBy('hits', 'desc')->take(6)->get()
        ]);
    }

    /**
     * Display all published posts paginated.
     */
    public function allPost()
    {
        $allPosts = Post::where('status', 'publish')->latest()->paginate(10);
        $categories = Category::where('active', 'yes')->get();

        return view('home.all-news', [
            'allPosts' => $allPosts,
            'categories' => $categories,
        ]);
    }

    /**
     * Display the detail of a specific post.
     */
    public function detailPost($id)
    {
        $post = Post::where('status', 'publish')->findOrFail($id);

        // Increment hits
        $post->increment('hits');

        $categories = Category::where('active', 'yes')->get();
        return view('home.single-page', compact('post', 'categories'));
    }

    /**
     * Display posts by a specific category.
     */
    public function category($id)
    {
        $category = Category::findOrFail($id);
        $posts = $category->publishedPosts()->latest()->get();
        $categories = Category::where('active', 'yes')->get();
        $allPosts = Post::where('status', 'publish')->latest()->paginate(10);
        $popularPosts = Post::where('status', 'publish')->orderBy('hits', 'desc')->take(6)->get();

        return view('home.category', [
            'category' => $category,
            'posts' => $posts,
            'categories' => $categories,
            'allPosts' => $allPosts,
            'popularPosts' => $popularPosts
        ]);
    }

    /**
     * Display search results based on query.
     */
    public function search(Request $request)
    {
        $query = $request->input('query');

    $posts = Post::where('status', 'publish')
                ->where(function ($queryBuilder) use ($query) {
                    $queryBuilder->where('title', 'like', "%{$query}%")
                                ->orWhere('content', 'like', "%{$query}%");
                })
                ->paginate(10); 

    $categories = Category::where('active', 'yes')->get();

    return view('home.search-result', [
        'query' => $query,
        'posts' => $posts,
        'categories' => $categories,]);
    }

    /**
     * Display the contact page.
     */
    public function contact()
    {
        return view('home.contact', [
            'posts' => Post::where('status', 'publish')->latest()->get(),
            'categories' => Category::where('active', 'yes')->get(),
        ]);
    }

    /**
     * Display the dashboard for admin.
     */
    public function dashboardAdmin()
    {
        $totalPosts = Post::count();
        $totalCategories = Category::count();
        $inactivePosts = Post::where('active', 'No')->count();
        $totalUsers = User::count();
        $totalClicks = Post::sum('hits');

        return view('admin.dashboard', compact('totalPosts', 'totalCategories', 'inactivePosts', 'totalUsers', 'totalClicks'));
    }

    /**
     * Display the dashboard for pengelola.
     */
    public function dashboardPengelola()
    {
        $totalPosts = Post::count();
        $totalCategories = Category::count();
        $inactivePosts = Post::where('active', 'No')->count();
        $totalClicks = Post::sum('hits');

        return view('pengelola.dashboard', compact('totalPosts', 'totalCategories', 'inactivePosts', 'totalClicks'));
    }
}

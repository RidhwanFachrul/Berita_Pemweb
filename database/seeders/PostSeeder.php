<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        // Berita pertama
        DB::table('posts')->insert([
            'title' => 'Berita Pertama',
            'seotitle' => 'berita-pertama',
            'user_id' => 1,
            'content' => 'This is the content of post 1',
            'image' => 'noimage.jpg',
            'hits' => 0,
            'active' => 'Yes',
            'status' => 'publish',
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        // Berita kedua
        DB::table('posts')->insert([
            'title' => 'Berita Kedua',
            'seotitle' => 'berita-kedua',
            'user_id' => 1,
            'content' => 'This is the content of post 2',
            'image' => 'noimage.jpg',
            'hits' => 0,
            'active' => 'Yes',
            'status' => 'publish',
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        // Berita ketiga
        DB::table('posts')->insert([
            'title' => 'Berita Ketiga',
            'seotitle' => 'berita-ketiga',
            'user_id' => 1,
            'content' => 'This is the content of post 3',
            'image' => 'noimage.jpg',
            'hits' => 0,
            'active' => 'Yes',
            'status' => 'publish',
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        // Berita keempat
        DB::table('posts')->insert([
            'title' => 'Berita Keempat',
            'seotitle' => 'berita-keempat',
            'user_id' => 1,
            'content' => 'This is the content of post 4',
            'image' => 'noimage.jpg',
            'hits' => 0,
            'active' => 'Yes',
            'status' => 'publish',
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        // Berita kelima
        DB::table('posts')->insert([
            'title' => 'Berita Kelima',
            'seotitle' => 'berita-kelima',
            'user_id' => 1,
            'content' => 'This is the content of post 5',
            'image' => 'noimage.jpg',
            'hits' => 0,
            'active' => 'Yes',
            'status' => 'publish',
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        // Berita keenam
        DB::table('posts')->insert([
            'title' => 'Berita Keenam',
            'seotitle' => 'berita-keenam',
            'user_id' => 1,
            'content' => 'This is the content of post 6',
            'image' => 'noimage.jpg',
            'hits' => 0,
            'active' => 'Yes',
            'status' => 'publish',
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        // Berita ketujuh
        DB::table('posts')->insert([
            'title' => 'Berita Ketujuh',
            'seotitle' => 'berita-ketujuh',
            'user_id' => 1,
            'content' => 'This is the content of post 7',
            'image' => 'noimage.jpg',
            'hits' => 0,
            'active' => 'Yes',
            'status' => 'publish',
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        // Berita kedelapan
        DB::table('posts')->insert([
            'title' => 'Berita Kedelapan',
            'seotitle' => 'berita-kedelapan',
            'user_id' => 1,
            'content' => 'This is the content of post 8',
            'image' => 'noimage.jpg',
            'hits' => 0,
            'active' => 'Yes',
            'status' => 'publish',
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }
}

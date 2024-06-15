# Proyek Baca Berita dengan Laravel

Ini adalah aplikasi baca berita yang dibangun dengan Laravel. Proyek ini mendukung tiga peran utama: User, Admin, dan Pengelola.

## Deskripsi Proyek

### Peran dan Hak Akses

1. **User**: 
    - Dapat melihat dan membaca berita.

2. **Admin**: 
    - Dapat melihat dashboard dengan statistik termasuk total postingan, total kategori, total pengguna, dan total klik.
    - Dapat menambahkan postingan baru.
    - Dapat menambahkan kategori baru.
    - Dapat menambahkan pengguna baru.

3. **Pengelola**: 
    - Dapat melihat dashboard dengan statistik termasuk total postingan, total kategori, total pengguna, dan total klik.
    - Dapat melihat statistik lebih rinci tetapi tidak bisa menambahkan postingan, kategori, atau pengguna.

## Instalasi

Ikuti langkah-langkah berikut untuk menyiapkan proyek:

1. **Clone repository**:
    ```bash
    git clone https://github.com/RidhwanFachrul/Berita_Pemweb.git
    cd your-repo
    ```

2. **Install dependencies**:
    ```bash
    composer install
    ```

3. **Copy file .env contoh dan atur variabel lingkungan**:
    ```bash
    cp .env.example .env
    ```

4. **Generate application key**:
    ```bash
    php artisan key:generate
    ```

5. **Atur database**:
    - Buka `.env` dan perbarui baris-baris berikut dengan informasi database Anda:
      ```env
      DB_CONNECTION=mysql
      DB_HOST=127.0.0.1
      DB_PORT=3306
      DB_DATABASE=nama_database
      DB_USERNAME=nama_pengguna
      DB_PASSWORD=katasandi
      ```

6. **Jalankan migrasi**:
    ```bash
    php artisan migrate
    ```

7. **Jalankan seeder**:
    ```bash
    php artisan db:seed --class=PostsTableSeeder
    ```

## Penggunaan

Setelah menyelesaikan langkah-langkah instalasi, Anda dapat memulai server pengembangan lokal:

```bash
php artisan serve
```
## Documentasi
# User
## Register
![Screenshot 2024-06-15 215221](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/50f01e40-9192-4a13-89b1-534467e38ecc)
## Login
![Screenshot 2024-06-15 215338](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/b0668742-786a-43f9-8747-123d59ed4467)
## Tampilan User Home
![Screenshot 2024-06-15 220444](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/477f0e72-ead3-4d9d-b93e-dfb52abb9d84)
![Screenshot 2024-06-15 220459](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/f6e6dc06-632c-40bd-a38f-c6bcfc7b440d)
![Screenshot 2024-06-15 220517](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/31d54f51-3599-49c2-99bf-d99f80d027d6)
## Tampilan Search
![Screenshot 2024-06-15 220711](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/5c529d64-0a2c-4b86-a4be-b012668758ed)
## Tampilan Semua Berita 
![Screenshot 2024-06-15 220824](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/1ac7d3a6-974a-474b-8a64-27d29a4f569a)
## Tampilan Kategori 
![Screenshot 2024-06-15 221009](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/86dda3fa-0144-4019-abf3-6367205e4b0d)
## Tampilan Berita (Salah satu)
![Screenshot 2024-06-15 221130](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/4e4a768d-2e9e-4074-98d4-aa2238e1f804)
![Screenshot 2024-06-15 221140](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/7b531cdf-0e55-4b05-9de7-48202ec99ec3)
## Contact Us
![Screenshot 2024-06-15 221237](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/e21005bf-15aa-4d97-97cb-24fd5639aae9)

# Pengelola
## Dashboard Pengelola 
![Screenshot 2024-06-15 221458](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/5d2f73d1-27cf-4cce-b83a-a3a526e7f4ef)
## Category 
![Screenshot 2024-06-15 221546](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/ed97393a-a9da-476e-ad0f-00d09bc392d7)
## Post 
![Screenshot 2024-06-15 221647](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/76d10fd7-418f-4c75-bd51-d7a2e337b932)
## Post Detils
![Screenshot 2024-06-15 221758](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/5d2bdc97-0827-4d40-a49f-8afcccbbc315)
![Screenshot 2024-06-15 221805](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/fcae00e4-edcf-406c-ade9-92b71535687f)

# Admin
## Dashboard Admin 
![Screenshot 2024-06-15 221942](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/af575b01-f1ba-4fb2-ba5c-8effed1ff576)
## Category Index
![Screenshot 2024-06-15 223755](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/21594606-3551-48d4-b33b-9e921d8288c3)
## Category Create
![Screenshot 2024-06-15 223806](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/5cd9d3af-bc78-442e-8585-63def5a99384)
## Category Edit
![Screenshot 2024-06-15 223816](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/f29b1dbf-d1a6-448d-b565-320dcef9f5db)
## Category Delete
![Screenshot 2024-06-15 224107](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/f33d52a5-5135-4e9f-878f-1c01d85eb546)
## Post Index
![Screenshot 2024-06-15 224203](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/7fd423d0-72bd-4e8d-b17d-bc209716817a)
## Post Create
![Screenshot 2024-06-15 224220](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/604344cb-f3dc-44fe-b997-cef4db131a88)
## Post Edit 
![Screenshot 2024-06-15 224243](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/cf7f534a-9763-47af-9064-c0eb6719f0bb)
## Post Delete
![Screenshot 2024-06-15 224402](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/20218c4e-748e-4cf0-b47e-6d6d34f22d74)
## User Index 
![Screenshot 2024-06-15 224412](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/96cbfe78-a1d8-40b4-ba35-a94657c5d1f6)
## User Create 
![Screenshot 2024-06-15 224501](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/45eeacee-b40e-4d3f-aa5d-efd20f5522da)
## User Edit
![Screenshot 2024-06-15 224516](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/c4d0a132-dee9-4e98-bf52-1a0adf9282bc)
## User Delete
![Screenshot 2024-06-15 224527](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/e048b9dd-a4e3-4564-89b7-cf1d3c2aa879)

# Database
![Screenshot 2024-06-15 224654](https://github.com/RidhwanFachrul/Berita_Pemweb/assets/146655228/d28f7f27-c678-45b7-9768-4b1a072a59f4)





**README TUGAS 9**

*Pertanyaan 1*
Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

    Ya, di Flutter dan Django, bisa mengambil data JSON tanpa membuat model terlebih dahulu. Walau begitu, keputusan antara menggunakan model atau tidak tergantung pada kompleksitas aplikasi dan preferensi pengembang. Menggunakan model memastikan keamanan, validasi, dan kode yang terorganisir. Tanpa model memberikan fleksibilitas dan memungkinkan pengembangan cepat. Pilihannya tergantung pada kebutuhan proyek dan preferensi pribadi.

*Pertanyaan 2*
Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

    CookieRequest adalah instance dari kelas yang terdapat dalam paket eksternal (pbp_django_auth). Fungsi utamanya adalah untuk membuat atau mengelola permintaan HTTP dengan menyertakan informasi kuki (cookie), yang sering digunakan dalam konteks authentikasi atau interaksi dengan server.

    Instance CookieRequest perlu dibagikan ke semua komponen di aplikasi Flutter, seperti yang dilakukan dengan menggunakan Provider, agar informasi authentikasi atau data kuki dapat diakses dan dikelola secara global. Ini memungkinkan komponen-komponen berbeda dalam aplikasi untuk berinteraksi dengan server dan berbagi informasi otentikasi tanpa perlu melewati data tersebut secara manual antar komponen. Dengan membagikan instance ini, status authentikasi dapat diakses dan diperbarui secara konsisten di seluruh aplikasi.

*Pertanyaan 3*
Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
    1. Definisi Model: Buat model Flutter yang merepresentasikan struktur data JSON.
    2. Konversi JSON ke Objek Model: Tambahkan metode di model untuk mengonversi JSON ke objek model.
    3. HTTP Request untuk Mengambil Data: Gunakan package HTTP untuk melakukan request ke web service dan dapatkan respons.
    4. Decode JSON Response: Gunakan dart:convert untuk mendecode respons JSON menjadi Map.
    5. Konversi ke Objek Model: Gunakan model dan metode konversi untuk membuat objek Flutter dari respons JSON.
    6. Tampilkan Data dengan Widget Flutter: Gunakan widget seperti FutureBuilder dan ListView.builder untuk menampilkan data dalam aplikasi Flutter.

*Pertanyaan 4*
Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

Mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter melibatkan beberapa langkah sebagai berikut:

1. Input Data Akun dari Flutter:
    Pengguna memasukkan data akun (seperti username dan password) pada antarmuka pengguna Flutter.

2. HTTP Request untuk Autentikasi:
    Dengan menggunakan package HTTP, Flutter mengirim HTTP request ke endpoint autentikasi Django, dalam hal ini endpoint login.

3. Verifikasi di Django:
    Django menerima request autentikasi, dan melakukan verifikasi data akun yang diterima. Jika data akun valid, Django menghasilkan respons sukses bersama dengan informasi pengguna yang dapat disertakan.

4. Tanggapan ke Flutter:
    Flutter menerima respons dari Django. Jika autentikasi sukses, Flutter dapat menyimpan status login dan informasi pengguna untuk digunakan di seluruh aplikasi.

5. Navigasi Menu:
    Jika autentikasi sukses, Flutter dapat menavigasi pengguna ke menu atau halaman yang sesuai. Ini melibatkan perubahan tata letak antarmuka pengguna untuk menampilkan menu yang relevan.

6. Logout:
    Autentikasi juga melibatkan kemampuan untuk logout. Ketika pengguna memilih logout, Flutter kembali melakukan HTTP request ke endpoint logout Django, dan Django mengakhiri sesi pengguna.

*Pertanyaan 5*
Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.

Pada tugas ini, terdapat beberapa widget Flutter yang digunakan. Berikut adalah daftar widget beserta penjelasan fungsinya:

1. **Drawer:**
   - **Fungsi:** Digunakan untuk membuat tampilan drawer (layar samping) pada aplikasi.
   - **Penggunaan:** Digunakan sebagai root container untuk menampung daftar menu yang dapat diakses pengguna.

2. **ListView:**
   - **Fungsi:** Digunakan untuk membuat daftar tata letak linier yang dapat di-scroll.
   - **Penggunaan:** Menyusun daftar menu di dalam drawer agar dapat di-scroll.

3. **DrawerHeader:**
   - **Fungsi:** Menyediakan header khusus untuk drawer.
   - **Penggunaan:** Menampilkan judul dan deskripsi pada bagian atas drawer.

4. **ListTile:**
   - **Fungsi:** Mendefinisikan satu baris dalam daftar.
   - **Penggunaan:** Menyediakan item-item menu di dalam drawer.

5. **Icon:**
   - **Fungsi:** Menampilkan ikon dari ikon set bawaan Flutter.
   - **Penggunaan:** Menampilkan ikon di sebelah kiri setiap item menu dalam drawer.

6. **Text:**
   - **Fungsi:** Menampilkan teks.
   - **Penggunaan:** Menampilkan judul, deskripsi, dan label pada beberapa bagian dalam aplikasi.

7. **Material:**
   - **Fungsi:** Widget dasar yang memberikan desain dasar material design.
   - **Penggunaan:** Menangani pewarnaan latar belakang pada `ShopCard` agar sesuai dengan properti warna dari `ShopItem`.

8. **InkWell:**
   - **Fungsi:** Membuat area responsif terhadap sentuhan.
   - **Penggunaan:** Mengaktifkan respons ketika item di dalam `ShopCard` di-tap.

9. **ScaffoldMessenger:**
   - **Fungsi:** Menyediakan metode untuk menampilkan snackbar (layar kecil yang muncul di bagian bawah aplikasi).
   - **Penggunaan:** Menampilkan snackbar ketika item di-tap dalam `ShopCard`.

10. **SnackBar:**
    - **Fungsi:** Menampilkan pesan notifikasi sementara di bagian bawah layar.
    - **Penggunaan:** Menampilkan pesan notifikasi ketika item di-tap dalam `ShopCard`.

11. **Padding:**
    - **Fungsi:** Menambahkan ruang (padding) di sekitar widget.
    - **Penggunaan:** Digunakan untuk memberikan ruang antar elemen pada beberapa bagian dalam aplikasi.

12. **Column:**
    - **Fungsi:** Menyusun child widget dalam kolom vertikal.
    - **Penggunaan:** Mengatur tata letak dari ikon dan teks di dalam `ShopCard`.

13. **Provider:**
    - **Fungsi:** Digunakan untuk melakukan state management (manajemen keadaan) di aplikasi Flutter.
    - **Penggunaan:** Digunakan untuk mengakses data yang dibutuhkan oleh `ShopCard`.

14. **BuildContext:**
    - **Fungsi:** Merepresentasikan lokasi dalam widget tree.
    - **Penggunaan:** Digunakan untuk navigasi antar halaman (page) dalam aplikasi.

15. **Navigator:**
    - **Fungsi:** Menangani navigasi antar halaman dalam aplikasi.
    - **Penggunaan:** Digunakan untuk berpindah ke halaman lain saat item di-tap.

16. **MaterialPageRoute:**
    - **Fungsi:** Membuat transisi animasi saat berpindah halaman.
    - **Penggunaan:** Digunakan untuk mengatur animasi saat berpindah halaman.

17. **async/await:**
    - **Fungsi:** Digunakan untuk melakukan operasi asinkron (non-blokir) pada Flutter.
    - **Penggunaan:** Digunakan dalam pemrosesan logout untuk menunggu respons server.

18. **SnackBar:**
    - **Fungsi:** Widget yang menampilkan pesan notifikasi sementara di bagian bawah layar.
    - **Penggunaan:** Menampilkan pesan notifikasi ketika user melakukan logout.


*Pertanyaan 6*
Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

Tentu, berikut ringkasan singkat dalam Bahasa Indonesia:

**Setup Django:**
1. **Buat Aplikasi Django Authentication:**
   - Buat aplikasi django dengan nama 'authentication'.
   - Tambahkan 'authentication' ke INSTALLED_APPS di file settings Django.

2. **Install dan Konfigurasi Django-Cors-Headers:**
   - Install library `django-cors-headers` menggunakan perintah `pip install django-cors-headers`.
   - Tambahkan 'corsheaders' ke INSTALLED_APPS dan middleware di settings.

3. **Tambahkan Variabel dan Buat View Login:**
   - Tambahkan variabel terkait CORS di settings.
   - Buat metode view untuk login di authentication/views.py.
   - Tentukan routing URL untuk view login di authentication/urls.py.
   - Sertakan authentication URLs di file URLs utama (shopping_list/urls.py).

**Setup Flutter:**
4. **Install Package Flutter:**
   - Install package `provider` dan `pbp_django_auth` dengan perintah `flutter pub add provider` dan `flutter pub add pbp_django_auth`.

5. **Modifikasi Root Widget dan Buat Halaman Login:**
   - Modifikasi widget root di main.dart untuk menyediakan instance CookieRequest menggunakan Provider.
   - Buat halaman login.dart dengan fungsionalitas login.
   - Tautkan halaman login sebagai halaman utama di main.dart.

6. **Implementasi Fetch Data dari Django:**
   - Implementasi fetching data dari Django dalam file list_product.dart.
   - Gunakan Quicktype untuk menghasilkan model Dart dari data JSON.

7. **Tambahkan Produk ke Left Drawer:**
   - Tambahkan halaman produk ke left_drawer.dart.

8. **Implementasi Form Flutter dengan Django:**
   - Hubungkan halaman shoplist_form.dart dengan CookieRequest.
   - Ubah tombol tambah untuk mengirim data ke Django.

9. **Implementasi Fitur Logout:**
   - Tambahkan fungsi view untuk logout di authentication/views.py.
   - Tentukan routing URL untuk logout di authentication/urls.py.
   - Modifikasi shop_card.dart untuk menambahkan fitur logout.

10. **Uji Coba Aplikasi:**
    - Jalankan aplikasi Flutter dan uji coba login, penambahan produk, melihat daftar produk, dan logout.


**README TUGAS 8**

*Pertanyaan 1*
Jelaskan perbedaan antara Navigator.push() dan Navigator pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

    Navigator.push(): Metode ini digunakan untuk menempatkan halaman baru di atas tumpukan halaman yang sudah ada. Ini membuat pengguna dapat kembali ke halaman sebelumnya dengan menggunakan tombol kembali pada perangkat.

    Navigator.pushReplacement(): Metode ini menggantikan halaman saat ini di tumpukan dengan halaman baru. Ini bermanfaat ketika Anda ingin menggantikan halaman sebelumnya dan tidak ingin pengguna dapat kembali ke halaman tersebut.

    Contoh pengunaan:

    // Contoh penggunaan Navigator.push() pada menu.dart
    Navigator.push(
        context,
        MaterialPageRoute(
        builder: (context) => const ShopFormPage(
            productList: [],
        ),
        ),
    );

    // Contoh penggunaan Navigator. pushReplacement() pada left_drawer.dart
    onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
            builder: (context) => MyHomePage(),
            ));
    },

*Pertanyaan 2*
Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

    Scaffold: Digunakan sebagai kerangka dasar aplikasi, menyediakan struktur tata letak dan fungsi-fungsi dasar seperti AppBar, Drawer, dan BottomNavigationBar.
    AppBar: Menyediakan AppBar (bilah aplikasi) yang biasanya berisi judul dan ikon aksi.
    Drawer: Widget untuk menampilkan drawer (geser dari sisi) yang berisi menu navigasi atau pilihan.
    ListView: Menyusun widget secara vertikal atau horizontal, terutama digunakan untuk membuat daftar atau menu panjang.
    GridView: Menyusun widget dalam bentuk grid dengan jumlah kolom yang dapat diatur.
    Form: Widget untuk membuat formulir yang mengandung elemen-elemen input seperti TextFormField.

*Pertanyaan 3*
Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
    TextFormField: Untuk menerima input teks dari pengguna. Digunakan untuk nama produk, harga, deskripsi, URL gambar, jumlah, ratings, dan ulasan. Alasan penggunaannya adalah karena TextFormField menyediakan validasi input dan memungkinkan untuk merespons perubahan nilai dengan mudah.

*Pertanyaan 4*
Bagaimana penerapan clean architecture pada aplikasi Flutter

    Clean Architecture adalah pendekatan pengembangan perangkat lunak yang memisahkan aplikasi menjadi beberapa lapisan agar menjadi lebih bersih, terkelola, dan dapat diuji. Beberapa prinsip utama dari Clean Architecture adalah:

    - Entities: Berisi aturan bisnis dan logika aplikasi.
    - Use Cases (Interactors): Mengandung logika bisnis yang spesifik untuk aplikasi dan menghubungkan antara entitas dan repositori.
    - Repositories: Menyediakan antarmuka untuk mengakses dan menyimpan data, terpisah dari implementasi teknisnya.
    - Frameworks & Drivers: Berisi implementasi teknis, seperti database, UI, dan framework lainnya.

    Penerapan Clean Architecture pada aplikasi Flutter melibatkan organisasi kode sesuai dengan lapisan-lapisan tersebut. Misalnya, memisahkan logika bisnis dari kode UI, menggunakan repositori untuk mengakses data, dan menjaga agar kode tetap bersih dan teruji.

*Pertanyaan 5*
Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

1. Organisasi file pada tugas sebelumnya dengan memindahkan ShopItem ke dalam file baru shop_card.dart yang dimasukkan pada folder widgets. Serta memindahkan menu.dart dalam folder screens.
2. Buat left_drawer.dart dan dimasukkan kedalam widgets
3. Buat shoplist_form.dart dan dimasukkan kedalam screens
4. Buat productlist_page.dart dan dimasukkan kedalam screens
5. Buat models untuk Item product yaitu ShopProducts yang dimasukkan ke widgets/shop_card.dart. Lalu import ke productlist_page.dart
5. Isi left_drawer sesuai tutorial dan import dari shoplist_form dan productlist_page dan tambahkan routing.
6. Import left_drawer ke menu.dart
7. Isi shoplist_form.dart sesuai tutorial namun menambahkan variable input mengikuti Proyek Django sebelumnya.
8. Tambahkan validator sesuai ketentuan.
9. Buat fungsi showDialog jika pengguna berhasil mengisi data sesuai semua validator
10. Tambahkan navigasi pada menu.dart dari button yang sudah ada.
11. Git add, commit, push.

#############################################################################
**README TUGAS 7**

*Pertanyaan 1*
**Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?**
Jawab:

Stateless Widget:
    Tidak bisa berubah: Widget tanpa status adalah komponen yang tidak simpan data atau status internal yang bisa berubah. Mereka fungsinya sebagai bagian dari antarmuka pengguna yang tetap.
    Hanya punya properti yang tetap: Widget tanpa status terima data sebagai parameter pembuat dan pakai data ini untuk buat tampilan. Mereka tidak punya mekanisme untuk ubah tampilan atau status secara internal.
    Performa ringan: Karena mereka statis dan tidak butuh perubahan status, mereka cenderung punya kinerja yang lebih baik.

Stateful Widget:
    Bisa berubah: Widget berstatus adalah widget yang bisa simpan dan atur status atau data yang bisa berubah selama siklus hidup aplikasi.
    Punya status internal: Mereka bisa ubah tampilan mereka secara dinamis berdasarkan perubahan pada status yang mereka pegang.
    Pakai State object: Widget berstatus punya kelas terpisah yang namanya “State” yang atur status dan sediakan metode untuk ubah tampilan saat status berubah.

*Pertanyaan 2*

**Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.**
Jawab:

**main.dart**
    MaterialApp:
    Fungsi: Ini adalah akar dari aplikasi Flutter.
    Penggunaan: Tentukan konfigurasi aplikasi seperti tema, warna, dan halaman awal aplikasi.

    MyApp (Widget tanpa status):
    Fungsi: Tampilkan MaterialApp dan atur konfigurasi dasar aplikasi.
    Penggunaan: Muat MaterialApp dan tentukan konfigurasi tema dasar.
    Widget yang dipakai dalam menu.dart:

**menu.dart**
    MyHomePage (Widget tanpa status):
    Fungsi: Tampilkan berbagai widget untuk halaman utama.
    Penggunaan: Tampilkan AppBar dan beberapa ShopCard dalam GridView.

    Scaffold:
    Fungsi: Bungkus tata letak halaman.
    Penggunaan: Sediakan struktur dasar untuk halaman, termasuk AppBar dan body.

    SingleChildScrollView:
    Fungsi: Buat area yang bisa di-scroll.
    Penggunaan: Biarkan konten di dalamnya untuk discroll kalau tidak cukup ruang.

    Column:
    Fungsi: Atur child secara vertikal.
    Penggunaan: Kelompokkan widget jadi kolom di dalam SingleChildScrollView.

    Padding:
    Fungsi: Tambahkan ruang putih di sekeliling widget-childnya.
    Penggunaan: Berikan padding di sekitar Column.

    GridView:
    Fungsi: Tampilkan child dalam tata letak grid.
    Penggunaan: Tampilkan item-item dari list items dalam bentuk grid.

    ShopCard (Widget tanpa status):
    Fungsi: Tampilkan kartu untuk setiap item.
    Penggunaan: Tampilkan icon dan nama item dalam sebuah card.

    Material:
    Fungsi: Berikan lapisan dasar untuk tampilan material.
    Penggunaan: Bungkus InkWell dan Container.

    InkWell:
    Fungsi: Berikan area responsif terhadap sentuhan.
    Penggunaan: Bungkus Container, biarkan respons ketika kartu ditekan.

    Container:
    Fungsi: Sediakan wadah untuk tampilkan konten.
    Penggunaan: Bungkus icon dan teks dalam kartu.

*Pertanyaan 3*
**Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)**
1. Membuat proyek flutter baru dengan perintah flutter create tugas7
2. Buka file lib/main.dart pada tugas7.
3. Tambahkan 3 tombol sederhana menggunakan MaterialApp sebagai root widget aplikasi
4. Tambahkan aksi pada tombol dengan menggunakan SnackBar
5. Menggunakan ElevatedButton.icon untuk menampilkan ikon dan teks dengan memanggil SnackBar.

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

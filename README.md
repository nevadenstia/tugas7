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

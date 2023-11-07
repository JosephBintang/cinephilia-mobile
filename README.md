JOSEPH BINTANG ARDHIRESPATI
2206082966
PBP D

# Tugas 7: Elemen Dasar Flutter
## Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
* Stateless Widget:
- Tidak Berubah: Stateless widget tidak dapat berubah—artinya setelah dibuat, nilai dan konfigurasinya tidak dapat diubah.
- Lifecycle: Mereka dibuat dengan konstruktor yang hanya dipanggil sekali; setelah itu, mereka tidak dapat diubah kecuali widget yang membuatnya dibuat ulang dengan parameter yang berbeda.
- Performance: Biasanya lebih ringan dan cepat karena mereka tidak perlu mengelola state.
- Contoh Penggunaan: Stateless widget sempurna untuk bagian UI yang tidak perlu di-update berdasarkan interaksi pengguna atau perubahan data internal, seperti ikon, tombol, dan teks (yang nilai teksnya tidak berubah).

* Stateful Widget:
- Dinamis: Stateful widget dapat berubah. Mereka memiliki State yang terpisah yang bisa di-update, yang berarti mereka bisa merespons perubahan data atau interaksi pengguna.
- Lifecycle yang Kompleks: Stateful widget memiliki lifecycle yang lebih kompleks. Mereka dibuat, dihancurkan, dan dapat di-update dengan memanggil setState() untuk merespons perubahan data.
- Performance: Mereka bisa lebih berat dalam hal performance karena harus mengelola state dan re-render ketika state berubah.
- Contoh Penggunaan: Digunakan untuk bagian UI yang perlu update, seperti form input, timer, atau informasi yang berubah secara dinamis sesuai dengan interaksi pengguna.

## Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing
- MaterialApp: Widget kenyamanan yang membungkus sejumlah widget yang umumnya diperlukan untuk Material Design applications
- ThemeData: Widget untuk memanipulasi tema seluruh aplikasi yang dibuat.
- ColorScheme: Widget yang berisi satu set 30 warna berdasarkan spesifikasi Material yang dapat digunakan untuk mengonfigurasi properti warna sebagian besar komponen.
- Scaffold: Widget berupa kelas dalam flutter yang menyediakan banyak widget atau bisa dikatakan API seperti Drawer, Snack-Bar, Bottom-Navigation-Bar, Floating-Action-Button, App-Bar, dll. Scaffold akan memperluas atau menempati seluruh layar perangkat. Ini akan menempati ruang yang tersedia.
- AppBar: Widget yang biasanya merupakan komponen paling atas dari aplikasi (atau terkadang paling bawah), berisi toolbar dan beberapa tombol aksi umum lainnya.
- Text: Text widget menampilkan serangkaian teks dengan single-style. String dapat dipecah menjadi beberapa baris atau mungkin semuanya ditampilkan pada baris yang sama, tergantung pada batasan tata letak. Argumen gaya bersifat opsional.
- Padding: Widget yang menambahkan lapisan atau ruang kosong di sekitar widget atau sekelompok widget.
- Column: Widget yang digunakan untuk membuat tata letak vertikal.
GridView.count: Widget yang membuat tata letak dengan jumlah tile tetap pada sumbu silang
- Material: Widget yang berfungsi untuk menyediakan desain visual Material Design pada widget lain.
- InkWell: Widget berupa area persegi panjang widget Material yang merespons peristiwa sentuhan dengan menampilkan percikan yang terpotong.
- Container: Kelas widget yang memungkinkan untuk menyesuaikan widget turunannya.
- Icon: Widget yang berfungsi untuk menampilkan beragam ikon dengan aneka model dan ukuran.
- SnackBar: Widget berupa pesan ringan dengan tindakan opsional yang ditampilkan secara singkat di bagian bawah layar.

## Implementasi Checklist Tugas 7
1. Persiapan Proyek:
* Buka Terminal atau Command Prompt.
* Navigasi ke direktori yang diinginkan.
* Buat proyek Flutter baru dengan flutter create cinephilia.
* Pindah ke direktori proyek dengan cd cinephilia.
* Jalankan proyek dengan flutter run.

2. Pengaturan untuk macOS:
* Aktifkan dukungan web dengan flutter config --enable-web.
* Jalankan proyek di Chrome dengan flutter run -d chrome.

3. Version Control dengan Git:
* Inisialisasi Git di direktori root.
* Tambahkan, commit, dan push ke repositori GitHub yang baru dengan nama sesuai repo.

4. Merapikan Struktur Proyek:
* Buat file menu.dart dalam direktori lib.
* Pindahkan kelas MyHomePage dan _MyHomePageState dari main.dart ke menu.dart.
* Tambahkan import 'package:cinephilia/menu.dart'; di main.dart.

5. Membuat Widget Sederhana:
* Ubah tema aplikasi dengan warna pilihanmu di main.dart.
* Ubah widget halaman menjadi stateless di menu.dart.
* Buat model ShopItem dan definisikan list item di menu.dart.
* Tambahkan GridView untuk menampilkan item dalam UI.
* Buat ShopCard sebagai stateless widget untuk setiap item.
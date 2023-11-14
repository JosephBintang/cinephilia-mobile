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

# Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements
## Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
* Navigator.push():
    - Fungsi ini digunakan untuk menavigasi ke halaman baru tanpa menghapus halaman sebelumnya dari stack navigasi.
    - Halaman baru ditambahkan ke atas stack, dan pengguna dapat kembali ke halaman sebelumnya dengan menggunakan tombol kembali atau gesture kembali.
    - Sangat berguna ketika Anda ingin memungkinkan pengguna untuk kembali ke halaman sebelumnya, seperti dalam kasus navigasi dari daftar produk ke detail produk.
Contoh Penggunaan:
Misalkan Anda memiliki dua halaman, HalamanA dan HalamanB. Jika Anda berada di HalamanA dan ingin pergi ke HalamanB

* Navigator.pushReplacement():
    - Metode ini digunakan untuk menavigasi ke halaman baru sambil menghapus halaman sebelumnya dari stack.
    - Halaman baru menggantikan posisi halaman sebelumnya di stack, dan pengguna tidak dapat kembali ke halaman sebelumnya.
    - Ini berguna untuk kasus seperti login screen atau splash screen, di mana Anda tidak ingin pengguna kembali ke halaman tersebut setelah navigasi.
Contoh Penggunaan:
Misalnya, jika Anda ingin navigasi dari layar Login (HalamanA) ke layar Home (HalamanB) dan tidak ingin pengguna kembali ke layar Login setelah berhasil masuk

## Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
1. Container:
    * Merupakan widget yang digunakan untuk mengatur dekorasi visual seperti warna latar, border, atau bayangan.
    * Bisa digunakan untuk mengatur margin dan padding, serta ukuran dan posisi widget anaknya.
    * Cocok untuk mendesain elemen UI yang memerlukan dekorasi khusus atau penyesuaian ukuran dan posisi.
2. Row dan Column:
    * Row digunakan untuk layout horizontal dan Column untuk layout vertikal.
    * Memungkinkan penataan widget anak secara sejajar (dalam Row) atau bertumpuk (dalam Column).
    * Berguna untuk menata elemen-elemen seperti tombol, teks, atau gambar secara berbaris atau bertumpuk.
3. Stack:
    * Mengatur widget anaknya secara tumpang tindih.
    * Berguna untuk kasus-kasus seperti menempatkan teks di atas gambar atau membuat efek overlay.
4. GridView:
    * Menampilkan widget dalam grid dua dimensi.
    * Cocok untuk kasus-kasus seperti galeri foto atau grid menu.
5. ListView:
    * Menampilkan daftar item yang bisa scroll.
    * Ideal untuk daftar yang panjang atau konten yang dinamis, seperti feed berita atau daftar email.

## Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
* TextField:
    - Untuk input teks.
    - Digunakan karena fleksibel untuk berbagai jenis input teks.

## Bagaimana penerapan clean architecture pada aplikasi Flutter?
Penerapan Clean Architecture pada aplikasi Flutter melibatkan pembagian kode menjadi beberapa lapisan yang terpisah, masing-masing dengan tanggung jawab yang berbeda. Tujuannya adalah untuk membuat kode yang lebih terorganisir, mudah untuk diuji, dan mudah untuk dipelihara. Berikut adalah cara penerapan Clean Architecture dalam konteks Flutter:

1. Entity Layer:
    * Layer ini terdiri dari objek-objek dasar yang digunakan oleh aplikasi.
    * Entitas biasanya mencerminkan struktur data yang digunakan, seperti model data.
    Contoh: Objek User, Product, dll.
2. Data Layer:
    * Layer ini bertanggung jawab atas penyimpanan data, pengambilan data, dan sumber data secara umum.
    * Ini termasuk repository dan data sources (API, database lokal, dll).
    * Repository adalah abstraksi untuk akses data, menyembunyikan sumber data sebenarnya dari lapisan bisnis.
    Contoh: UserRepository, yang dapat mengambil data pengguna dari database lokal atau remote server.
3. Domain Layer:
    * Layer ini adalah inti dari aplikasi, di mana aturan bisnis didefinisikan.
    * Berisi use cases atau interaktor yang menggambarkan aksi yang bisa dilakukan di dalam aplikasi.
    * Use case berinteraksi dengan repository untuk memanipulasi data.
    Contoh: GetUserDetails, sebuah use case yang mengambil detail pengguna dari repository.

## Implementasi Checklist Tugas 8
1. Menambahkan Drawer Menu:
    * Buat file baru left_drawer.dart di direktori widgets.
    * Tambahkan kelas LeftDrawer yang mengembalikan widget Drawer dengan ListView.
    * Di dalam ListView, tambahkan DrawerHeader dan ListTile untuk navigasi ke halaman lain seperti MyHomePage dan ShopFormPage.
    * Dekorasi DrawerHeader dengan teks dan gaya.
    * Impor LeftDrawer ke halaman yang ingin memiliki drawer, misalnya menu.dart, dan tambahkan sebagai drawer di Scaffold.

2. Menambahkan Form dan Elemen Input:
    * Buat file baru shoplist_form.dart di direktori lib.
    * Tambahkan kelas ShopFormPage dengan state ShopFormPageState.
    * Dalam ShopFormPageState, gunakan Scaffold dengan AppBar dan Form sebagai body.
    * Tambahkan GlobalKey<FormState> untuk mengelola state form.
    * Di dalam Form, gunakan Column untuk menyusun TextFormField untuk berbagai input seperti nama produk, harga, dan deskripsi.
    * Setiap TextFormField memiliki validator untuk validasi input.
    * Tambahkan ElevatedButton untuk menyimpan data, dengan showDialog untuk menampilkan hasil input.

3. Memunculkan Data:
    * Pada onPressed dari ElevatedButton, tampilkan AlertDialog dengan data yang diinputkan setelah validasi form sukses.

4. Menambahkan Fitur Navigasi pada Tombol:
    * Modifikasi widget ShopItem pada menu.dart agar pada onTap, navigasi ke halaman yang sesuai dilakukan, misalnya ShopFormPage.

5. Refactoring File:
    * Pindahkan halaman ke folder screens untuk organisasi yang lebih baik.
    * Pisahkan widget ke dalam file terpisah di direktori widgets.
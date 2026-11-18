# Aplikasi Katalog Produk (JavaFX + SQLite)

Aplikasi desktop manajemen katalog produk berbasis **JavaFX** yang dilengkapi dengan penyimpanan lokal **SQLite** dan mendukung operasi CRUD (*Create, Read, Update, Delete*) secara penuh.

## Fitur Utama

* **Tampilan Katalog Berbasis Kartu (*Card Grid*):** Menampilkan daftar produk lengkap dengan gambar, nama, harga (format Rupiah), dan ID produk.
* **Tambah Produk (*Create*):** Menambahkan item produk baru beserta pemilihan aset foto dan validasi input harga.
* **Ubah Data Produk (*Update*):** Memuat data produk langsung ke formulir utama untuk diperbarui, dilengkapi indikator mode edit dan tombol batal.
* **Hapus Produk (*Delete*):** Menghapus item produk dari database dengan kotak dialog konfirmasi agar tidak terhapus secara tidak sengaja.
* **Penyimpanan Lokal Otomatis:** Menggunakan database SQLite (`data/katalog.db`) yang otomatis dibuat dan diinisialisasi saat aplikasi pertama kali dijalankan.

---

## Prasyarat Sistem

* Sistem Operasi **Windows** (untuk menjalankan peluncur instan `.exe`).
* **Java Development Kit (JDK) 17** atau versi yang lebih baru sudah terpasang di sistem.
* Koneksi internet pada saat **pertama kali dijalankan** (hanya untuk mengunduh dependensi JavaFX dan Maven Wrapper secara otomatis; setelah itu aplikasi dapat berjalan secara *offline*).

---

## Cara Menjalankan Aplikasi

Anda tidak perlu menginstal Apache Maven secara manual maupun membuka IDE (NetBeans/IntelliJ/VS Code) untuk menjalankan aplikasi ini.

1. Unduh atau *clone* repositori ini ke komputer Anda.
2. Buka folder utama proyek **`KatalogProduk`**.
3. Klik ganda (*double-click*) file **`RUNKatalogProduk.exe`**.
4. Tunggu beberapa saat hingga proses kompilasi selesai dan jendela aplikasi **Katalog Produk** terbuka secara otomatis.

### Mengapa Bisa Langsung Dijalankan?
Proyek ini sudah dibekali **Maven Wrapper** (`mvnw.cmd` dan konfigurasi di dalam folder tersembunyi `.mvn`). Peluncur `RUNKatalogProduk.exe` akan otomatis memanggil Maven Wrapper lokal tersebut untuk mengonfigurasi lingkungan *build* dan menjalankan perintah `javafx:run` secara mandiri tanpa bergantung pada instalasi Maven di komputer pengguna.

---

## Struktur Proyek

```text
KatalogProduk/
├── .mvn/                   # Konfigurasi hidden folder Maven Wrapper
├── data/                   # Folder penyimpanan database SQLite (katalog.db)
├── src/
│   └── main/
│       ├── java/
│       │   ├── controller/ # Logika antarmuka & interaksi CRUD (KatalogController.java)
│       │   ├── data/       # Operasi query database (ProdukRepository.java)
│       │   ├── db/         # Koneksi & inisialisasi tabel SQLite (Database.java)
│       │   ├── main/       # Entry point aplikasi JavaFX (MainApp.java)
│       │   └── model/      # Entitas data produk (Produk.java)
│       └── resources/
│           ├── image/      # Aset gambar produk
│           └── view/       # Desain tampilan FXML & stylesheet CSS
├── mvnw.cmd                # Skrip eksekusi Maven Wrapper untuk Windows
├── pom.xml                 # Konfigurasi dependensi Maven (JavaFX 21 & SQLite JDBC)
└── RUNKatalogProduk.exe    # Peluncur instan aplikasi untuk Windows
```

---

## Teknologi yang Digunakan

* **Bahasa Pemrograman:** Java 17
* **GUI Framework:** JavaFX 21 (`javafx-controls`, `javafx-fxml`)
* **Database:** SQLite (`sqlite-jdbc`)
* **Build Tool:** Apache Maven & Maven Wrapper

# CRUD Pengepul & Pengiriman - Bank Sampah Digital

Bagian ini merupakan implementasi CRUD untuk 2 entitas pada sistem Bank Sampah Digital:

- **Pengepul**: Data mitra yang bekerja sama dalam pengambilan dan pengolahan sampah.
- **Pengiriman Sampah ke Pengepul**: Pencatatan pengiriman sampah dari nasabah/pengelola ke pengepul.

## 📁 Struktur Folder

```
/pengepul
    ├── index.php      // Tampilkan daftar pengepul
    ├── create.php     // Tambah pengepul baru
    ├── update.php     // Ubah data pengepul
    └── delete.php     // Hapus pengepul

/pengiriman
    ├── index.php      // Tampilkan daftar pengiriman
    ├── create.php     // Tambah pengiriman
    ├── update.php     // Edit pengiriman
    └── delete.php     // Hapus pengiriman

/config
    └── koneksi.php    // Konfigurasi koneksi database
```

## 🛠️ Instalasi

1. Import database:
   - Jalankan file SQL `pengepul_pengiriman_tables.sql` ke MySQL (`phpMyAdmin` atau CLI).
2. Atur koneksi database di `config/koneksi.php` sesuai konfigurasi lokal.
3. Jalankan project lokal di server seperti XAMPP/Laragon.

## 📦 Tabel Database

### Tabel `pengepul`
| Kolom                 | Tipe         |
|-----------------------|--------------|
| ID_Pengepul           | INT (PK)     |
| Nama_Pengepul         | VARCHAR      |
| No_Telepon            | VARCHAR      |
| Email                 | VARCHAR      |
| Lokasi_Pengepul       | TEXT         |
| Jenis_Sampah_Diterima | TEXT         |
| Kapasitas             | FLOAT        |
| Jadwal_Pengambilan    | VARCHAR      |
| Status_Kerjasama      | VARCHAR      |

### Tabel `pengiriman_sampah_ke_pengepul`
| Kolom                | Tipe         |
|----------------------|--------------|
| ID_Pengiriman        | INT (PK)     |
| ID_Pengepul          | INT (FK)     |
| ID_Transaksi         | INT          |
| Tanggal_Kirim        | DATE         |
| Total_Berat          | FLOAT        |
| Status_Pengiriman    | VARCHAR      |
| Nama_Kurir           | VARCHAR      |
| No_Telepon_Kurir     | VARCHAR      |
| Biaya_Pengiriman     | FLOAT        |

## 👩🏻‍💼 Penanggung Jawab
- **Nama**: Vivi
- **Peran**: CRUD untuk entitas `Pengepul` dan `Pengiriman Sampah ke Pengepul`

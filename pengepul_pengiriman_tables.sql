
CREATE TABLE IF NOT EXISTS pengepul (
    ID_Pengepul INT AUTO_INCREMENT PRIMARY KEY,
    Nama_Pengepul VARCHAR(100),
    No_Telepon VARCHAR(20),
    Email VARCHAR(100),
    Lokasi_Pengepul TEXT,
    Jenis_Sampah_Diterima TEXT,
    Kapasitas FLOAT,
    Jadwal_Pengambilan VARCHAR(100),
    Status_Kerjasama VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS pengiriman_sampah_ke_pengepul (
    ID_Pengiriman INT AUTO_INCREMENT PRIMARY KEY,
    ID_Pengepul INT,
    ID_Transaksi INT,
    Tanggal_Kirim DATE,
    Total_Berat FLOAT,
    Status_Pengiriman VARCHAR(50),
    Nama_Kurir VARCHAR(100),
    No_Telepon_Kurir VARCHAR(20),
    Biaya_Pengiriman FLOAT,
    FOREIGN KEY (ID_Pengepul) REFERENCES pengepul(ID_Pengepul)
);

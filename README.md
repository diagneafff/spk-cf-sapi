# 🐄 Sistem Pakar Deteksi Penyakit Sapi - Certainty Factor

Sistem ini merupakan aplikasi web berbasis **PHP native** yang menggunakan metode **Certainty Factor (CF)** untuk membantu mendiagnosis penyakit pada sapi berdasarkan gejala-gejala yang dimasukkan oleh pengguna.

💡 **Catatan:**  
Proyek ini awalnya dikembangkan sebagai **tugas mata kuliah Kecerdasan Buatan**, dan dikembangkan ulang untuk tujuan pembelajaran dan portofolio pribadi.

---

## 🔍 Fitur Utama

- Input gejala dengan nilai keyakinan (certainty)
- Perhitungan nilai CF untuk menentukan kemungkinan penyakit
- Hasil diagnosis ditampilkan dengan tingkat kepercayaan
- Manajemen data:
  - Penyakit
  - Gejala
  - Basis aturan (relasi penyakit-gejala)

---

## 🛠️ Teknologi

- PHP Native
- MySQL
- HTML, CSS, JavaScript

---

## ⚙️ Cara Menjalankan Aplikasi

1. **Clone / download** repository ini.

2. **Pindahkan folder ke direktori XAMPP/htdocs** (jika menggunakan XAMPP).

3. **Import database:**
   - Buka `phpMyAdmin`
   - Import file SQL yang tersedia di folder `database/` (misalnya `sapii.sql`)

4. **Atur konfigurasi database:**
   - Edit file `config/koneksi.php` atau file koneksi lain
   - Sesuaikan dengan environment lokal kamu

5. **Jalankan di browser:**


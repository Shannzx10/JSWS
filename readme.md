# Janet Web Server

<div align="center">
  <img src="https://janet-lang.org/assets/janet-big.png" alt="Janet Logo" width="120">
  <h3>🚀 Web Server Sederhana dengan Janet</h3>
  <p>Web server yang ringan dan mudah digunakan untuk melayani file statis</p>
</div>

<div align="center">

[![GitHub license](https://img.shields.io/github/license/Shannzx10/JSWS?color=blue)](https://github.com/Shannzx10/JSWS/blob/main/LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/Shannzx10/JSWS?color=yellow)](https://github.com/Shannzx10/JSWS/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/Shannzx10/JSWS?color=green)](https://github.com/Shannzx10/JSWS/network)
[![GitHub issues](https://img.shields.io/github/issues/Shannzx10/JSWS?color=red)](https://github.com/Shannzx10/JSWS/issues)
[![GitHub pull requests](https://img.shields.io/github/issues-pr/Shannzx10/JSWS?color=purple)](https://github.com/Shannzx10/JSWS/pulls)
[![GitHub last commit](https://img.shields.io/github/last-commit/Shannzx10/JSWS)](https://github.com/Shannzx10/JSWS/commits/main)

</div>

---

Web server sederhana yang dibuat menggunakan bahasa pemrograman Janet. Server ini dapat melayani file statis dan menyediakan halaman error yang responsif.

### 🎯 Fitur Utama:
- 🗂️ **Melayani file statis** (HTML, CSS, JS, gambar, font, dll)
- 🎨 **Halaman error responsif** dengan Tailwind CSS (404 & 500)
- 📊 **Logging permintaan HTTP** dengan timestamp
- 🔒 **Perlindungan path traversal** untuk keamanan
- 📄 **Konfigurasi MIME type** yang lengkap
- 🚀 **Performa ringan** dan mudah dikonfigurasi

### 📁 Struktur Proyek

```
project/
├── 📄 main.janet
├── 📄 project.janet
├── 📄 Makefile
├── 📂 server/
│   ├── ⚙️ config.janet
│   ├── 🖥️ server.janet
│   ├── 🎛️ handlers.janet
│   └── 🔧 utils.janet
├── 📂 public/
│   └── 🏠 index.html
└── 📂 test/
    └── 🧪 run-tests.janet
```

### 📋 Prasyarat

- 🟢 **[Janet](https://janet-lang.org/)** harus terinstall
- 📦 **[JPM](https://github.com/janet-lang/jpm)** (Janet Package Manager)
- 🔧 **[Spork](https://github.com/janet-lang/spork)** (library Janet untuk utilities)

### 🔧 Install Janet dan JPM

```bash
# Install Janet (varies by OS)
# Ubuntu/Debian:
sudo apt install janet

# macOS:
brew install janet

# Windows: Download dari janet-lang.org

# JPM biasanya sudah include dengan Janet
jpm --version
```

### 🚀 Instalasi

```bash
#Install Spork
jpm install spork

# Running 
janet main.janet
```

<div align="center">
  <img src="https://img.shields.io/badge/Server-http%3A%2F%2F127.0.0.1%3A4000-brightgreen?style=for-the-badge&logo=server&logoColor=white" alt="Server URL">
</div>

### 🤝 Kontribusi

<div align="center">
  <img src="https://img.shields.io/badge/Contributions-Welcome-brightgreen?style=for-the-badge&logo=github&logoColor=white" alt="Contributions Welcome">
</div>

Jika Anda ingin berkontribusi pada proyek ini:

1. 🍴 **Fork repository**
2. 🌿 **Buat branch fitur baru**
3. 💾 **Commit perubahan Anda**
4. 📤 **Push ke branch**
5. 🔄 **Buat Pull Request**

### 📄 Lisensi

<div align="center">
  <img src="https://img.shields.io/badge/License-MIT-blue?style=for-the-badge&logo=open-source-initiative&logoColor=white" alt="MIT License">
</div>

Proyek ini bersifat open source dan dapat digunakan sesuai kebutuhan.

### ⚠️ Catatan Penting

<div align="center">
  <img src="https://img.shields.io/badge/Environment-Development-orange?style=for-the-badge&logo=development&logoColor=white" alt="Development Environment">
</div>

Server ini dibuat untuk keperluan **development** dan **pembelajaran**. Untuk production, pertimbangkan untuk menggunakan web server yang lebih robust seperti **nginx** atau **apache**.

---

<div align="center">
  <p>
    <a href="https://janet-lang.org/"><img src="https://img.shields.io/badge/Made%20with-Janet-blue?style=flat-square&logo=janet&logoColor=white"></a>
    <a href="https://github.com/Shannzx10/JSWS"><img src="https://img.shields.io/badge/GitHub-Repository-black?style=flat-square&logo=github&logoColor=white"></a>
  </p>
</div>
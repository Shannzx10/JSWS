# Janet Web Server

<div align="center">
  <img src="https://janet-lang.org/imgs/janet-w200.png" alt="Janet Logo" width="120">
  <h3>🚀 Web Server Sederhana dengan Janet</h3>
  <p>Web server yang ringan dan mudah digunakan untuk melayani file statis</p>
</div>

<div align="center">

[![GitHub license](https://img.shields.io/github/license/username/janet-web-server?color=blue)](https://github.com/username/janet-web-server/blob/main/LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/username/janet-web-server?color=yellow)](https://github.com/username/janet-web-server/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/username/janet-web-server?color=green)](https://github.com/username/janet-web-server/network)
[![GitHub issues](https://img.shields.io/github/issues/username/janet-web-server?color=red)](https://github.com/username/janet-web-server/issues)
[![GitHub pull requests](https://img.shields.io/github/issues-pr/username/janet-web-server?color=purple)](https://github.com/username/janet-web-server/pulls)
[![GitHub last commit](https://img.shields.io/github/last-commit/username/janet-web-server)](https://github.com/username/janet-web-server/commits/main)

</div>

---

Web server sederhana yang dibuat menggunakan bahasa pemrograman Janet. Server ini dapat melayani file statis dan menyediakan halaman error yang responsif.

## ✨ Fitur

<div align="center">
  <table>
    <tr>
      <td align="center">
        <img src="https://img.icons8.com/color/48/000000/file-sharing.png" width="40">
        <br><strong>File Statis</strong>
        <br>HTML, CSS, JS, gambar, font
      </td>
      <td align="center">
        <img src="https://img.icons8.com/color/48/000000/error.png" width="40">
        <br><strong>Error Pages</strong>
        <br>404 & 500 responsif
      </td>
      <td align="center">
        <img src="https://img.icons8.com/color/48/000000/activity-log.png" width="40">
        <br><strong>Logging</strong>
        <br>Request logging
      </td>
      <td align="center">
        <img src="https://img.icons8.com/color/48/000000/security-checked.png" width="40">
        <br><strong>Security</strong>
        <br>Path traversal protection
      </td>
    </tr>
  </table>
</div>

### 🎯 Fitur Utama:
- 🗂️ **Melayani file statis** (HTML, CSS, JS, gambar, font, dll)
- 🎨 **Halaman error responsif** dengan Tailwind CSS (404 & 500)
- 📊 **Logging permintaan HTTP** dengan timestamp
- 🔒 **Perlindungan path traversal** untuk keamanan
- 📄 **Konfigurasi MIME type** yang lengkap
- 🚀 **Performa ringan** dan mudah dikonfigurasi

## 📁 Struktur Proyek

```
project/
├── 📄 main.janet          # Entry point aplikasi
├── 📄 project.janet       # Konfigurasi proyek (seperti package.json)
├── 📄 Makefile           # Build scripts dan automation
├── 📂 server/
│   ├── ⚙️ config.janet    # Konfigurasi server dan MIME types
│   ├── 🖥️ server.janet    # Logika server TCP
│   ├── 🎛️ handlers.janet  # Handler untuk request HTTP
│   └── 🔧 utils.janet     # Utility functions
├── 📂 public/             # Direktori untuk file statis
│   └── 🏠 index.html      # Halaman utama (opsional)
└── 📂 test/               # Test files
    └── 🧪 run-tests.janet  # Test runner
```

## 📋 Prasyarat

<div align="center">
  <table>
    <tr>
      <td align="center">
        <img src="https://janet-lang.org/imgs/janet-w200.png" width="80">
        <br><strong>Janet</strong>
        <br>Bahasa pemrograman utama
      </td>
      <td align="center">
        <img src="https://img.icons8.com/color/48/000000/module.png" width="40">
        <br><strong>JPM</strong>
        <br>Janet Package Manager
      </td>
      <td align="center">
        <img src="https://img.icons8.com/color/48/000000/module.png" width="40">
        <br><strong>Spork</strong>
        <br>Library utilities Janet
      </td>
    </tr>
  </table>
</div>

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

## 🚀 Instalasi

### 🎯 Instalasi Otomatis (Recommended)

```bash
# Check environment
make check

# Setup project structure
make setup

# Install dependencies
make deps

# Start server
make start
```

### 🔧 Instalasi Manual

1. **Clone atau download proyek ini**
2. **Pastikan Janet dan JPM sudah terinstall** di sistem Anda
3. **Install dependencies**:
   ```bash
   jpm install
   ```
4. **Setup struktur proyek**:
   ```bash
   mkdir -p public test
   ```

## 📜 Build Scripts

Proyek ini menggunakan `project.janet` (seperti `package.json` di Node.js) dan `Makefile` untuk automation:

<details>
<summary>📖 Available Make Commands</summary>

### 🏗️ Build Commands
```bash
make deps         # Install dependencies
make dev-deps     # Install development dependencies  
make build        # Build the project
make clean        # Clean build artifacts
make install      # Install executable globally
make uninstall    # Uninstall executable
```

### 🚀 Development Commands
```bash
make start        # Start the web server
make dev          # Start in development mode
make test         # Run tests
```

### ⚙️ Setup Commands
```bash
make setup        # Create project structure
make check        # Check Janet installation
make help         # Show help message
```

</details>

### 📦 Using JPM Directly

```bash
# Install dependencies
jpm install

# Build project
jpm build

# Install globally
jpm install

# Run tests
jpm test
```

## 💻 Penggunaan

### 🔥 Menjalankan Server

```bash
# Menggunakan Make (recommended)
make start

# Atau langsung dengan Janet
janet main.janet

# Development mode dengan auto-reload
make dev
```

<div align="center">
  <img src="https://img.shields.io/badge/Server-http%3A%2F%2F127.0.0.1%3A4000-brightgreen?style=for-the-badge&logo=server&logoColor=white" alt="Server URL">
</div>

### ⚙️ Konfigurasi

Edit file `server/config.janet` untuk mengubah pengaturan:

```janet
(def PORT "4000")           # 🔌 Port server
(def HOST "127.0.0.1")      # 🌐 Host server
(def PUBLIC_DIR "public")   # 📁 Direktori file statis
```

### 🔧 Build dan Deploy

```bash
# Build untuk production
make build

# Install sebagai executable global
make install

# Jalankan dari mana saja
janet-web-server

# Uninstall
make uninstall
```

### 📂 Menambahkan File Statis

Letakkan file HTML, CSS, JavaScript, gambar, dan file statis lainnya di dalam direktori `public/`. Server akan otomatis melayani file-file tersebut.

<details>
<summary>📖 Contoh struktur direktori public</summary>

```
public/
├── 🏠 index.html
├── 🎨 style.css
├── ⚡ script.js
├── 📷 images/
│   ├── 🖼️ logo.png
│   └── 🎨 banner.jpg
└── 🔤 fonts/
    └── ✨ custom-font.woff2
```

</details>

## 📄 MIME Types yang Didukung

<div align="center">
  <table>
    <tr>
      <td align="center">
        <img src="https://img.icons8.com/color/48/000000/html-5.png" width="40">
        <br><strong>HTML</strong>
        <br><code>.html</code>
      </td>
      <td align="center">
        <img src="https://img.icons8.com/color/48/000000/css3.png" width="40">
        <br><strong>CSS</strong>
        <br><code>.css</code>
      </td>
      <td align="center">
        <img src="https://img.icons8.com/color/48/000000/javascript.png" width="40">
        <br><strong>JavaScript</strong>
        <br><code>.js</code>
      </td>
      <td align="center">
        <img src="https://img.icons8.com/color/48/000000/json.png" width="40">
        <br><strong>JSON</strong>
        <br><code>.json</code>
      </td>
    </tr>
    <tr>
      <td align="center">
        <img src="https://img.icons8.com/color/48/000000/image.png" width="40">
        <br><strong>Gambar</strong>
        <br><code>.png, .jpg, .gif, .svg</code>
      </td>
      <td align="center">
        <img src="https://img.icons8.com/color/48/000000/font.png" width="40">
        <br><strong>Font</strong>
        <br><code>.woff, .woff2, .ttf</code>
      </td>
      <td align="center">
        <img src="https://img.icons8.com/color/48/000000/file.png" width="40">
        <br><strong>Text</strong>
        <br><code>.txt</code>
      </td>
      <td align="center">
        <img src="https://img.icons8.com/color/48/000000/favicon.png" width="40">
        <br><strong>Icon</strong>
        <br><code>.ico</code>
      </td>
    </tr>
  </table>
</div>

Server mendukung berbagai format file dengan MIME type yang sesuai:

- **HTML**: `.html` → `text/html`
- **CSS**: `.css` → `text/css`
- **JavaScript**: `.js` → `application/javascript`
- **JSON**: `.json` → `application/json`
- **Gambar**: `.png`, `.jpg`, `.jpeg`, `.gif`, `.svg`, `.ico`
- **Font**: `.woff`, `.woff2`, `.ttf`, `.otf`
- **Teks**: `.txt` → `text/plain`

## 🚨 Halaman Error

<div align="center">
  <table>
    <tr>
      <td align="center">
        <img src="https://img.icons8.com/color/48/000000/error-404.png" width="60">
        <br><strong>404 Not Found</strong>
        <br>Halaman tidak ditemukan
      </td>
      <td align="center">
        <img src="https://img.icons8.com/color/48/000000/error.png" width="60">
        <br><strong>500 Server Error</strong>
        <br>Error internal server
      </td>
    </tr>
  </table>
</div>

Server menyediakan halaman error yang responsif dan menggunakan Tailwind CSS untuk tampilan yang menarik.

## 🔒 Fitur Keamanan

<div align="center">
  <table>
    <tr>
      <td align="center">
        <img src="https://img.icons8.com/color/48/000000/security-shield-green.png" width="40">
        <br><strong>Path Traversal Protection</strong>
        <br>Mencegah akses file berbahaya
      </td>
      <td align="center">
        <img src="https://img.icons8.com/color/48/000000/method-draw.png" width="40">
        <br><strong>Method Validation</strong>
        <br>Hanya GET request
      </td>
      <td align="center">
        <img src="https://img.icons8.com/color/48/000000/error-handling.png" width="40">
        <br><strong>Error Handling</strong>
        <br>Mencegah server crash
      </td>
    </tr>
  </table>
</div>

- 🛡️ **Path Traversal Protection**: Mencegah akses ke file di luar direktori public
- 🔍 **Method Validation**: Hanya menerima HTTP GET request
- 🚨 **Error Handling**: Penanganan error yang baik untuk mencegah crash server

## 📊 Logging

Server akan menampilkan log untuk setiap request yang masuk dengan format yang mudah dibaca:

```
[2024-01-15 10:30:45] GET /
[2024-01-15 10:30:46] GET /style.css
[2024-01-15 10:30:46] GET /script.js
```

<div align="center">
  <img src="https://img.shields.io/badge/Logging-Real%20Time-blue?style=for-the-badge&logo=log&logoColor=white" alt="Real Time Logging">
</div>

## 📝 Contoh Penggunaan

### 🏗️ Setup Cepat

1. **Buat file `public/index.html`**:
```html
<!DOCTYPE html>
<html>
<head>
    <title>🚀 Janet Web Server</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body>
    <h1>🎉 Hello World!</h1>
    <p>Server berjalan dengan Janet! 🔥</p>
    <script src="/script.js"></script>
</body>
</html>
```

2. **Jalankan server**:
```bash
janet main.janet
```

3. **Buka browser** dan kunjungi:
   ```
   http://127.0.0.1:4000
   ```

<div align="center">
  <img src="https://img.shields.io/badge/Status-Ready%20to%20Use-success?style=for-the-badge&logo=checkmark&logoColor=white" alt="Ready to Use">
</div>

## 🛠️ Troubleshooting

<details>
<summary>🔴 Server tidak bisa dijalankan</summary>

- ✅ Pastikan Janet sudah terinstall dengan benar
- ✅ Pastikan port 4000 tidak sedang digunakan aplikasi lain
- ✅ Periksa apakah direktori `public` sudah ada

</details>

<details>
<summary>📁 File tidak bisa diakses</summary>

- ✅ Pastikan file berada di dalam direktori `public`
- ✅ Periksa permission file dan direktori
- ✅ Pastikan nama file dan path sudah benar

</details>

<details>
<summary>💥 Error 500</summary>

- ✅ Periksa log error di terminal
- ✅ Pastikan file yang diakses tidak corrupt
- ✅ Periksa permission read pada file

</details>

## 🤝 Kontribusi

<div align="center">
  <img src="https://img.shields.io/badge/Contributions-Welcome-brightgreen?style=for-the-badge&logo=github&logoColor=white" alt="Contributions Welcome">
</div>

Jika Anda ingin berkontribusi pada proyek ini:

1. 🍴 **Fork repository**
2. 🌿 **Buat branch fitur baru**
3. 💾 **Commit perubahan Anda**
4. 📤 **Push ke branch**
5. 🔄 **Buat Pull Request**

## 📄 Lisensi

<div align="center">
  <img src="https://img.shields.io/badge/License-MIT-blue?style=for-the-badge&logo=open-source-initiative&logoColor=white" alt="MIT License">
</div>

Proyek ini bersifat open source dan dapat digunakan sesuai kebutuhan.

## ⚠️ Catatan Penting

<div align="center">
  <img src="https://img.shields.io/badge/Environment-Development-orange?style=for-the-badge&logo=development&logoColor=white" alt="Development Environment">
</div>

Server ini dibuat untuk keperluan **development** dan **pembelajaran**. Untuk production, pertimbangkan untuk menggunakan web server yang lebih robust seperti **nginx** atau **apache**.

---

<div align="center">
  <p>🌟 Dibuat dengan ❤️ menggunakan Janet</p>
  <p>
    <a href="https://janet-lang.org/"><img src="https://img.shields.io/badge/Made%20with-Janet-blue?style=flat-square&logo=janet&logoColor=white"></a>
    <a href="https://github.com/"><img src="https://img.shields.io/badge/GitHub-Repository-black?style=flat-square&logo=github&logoColor=white"></a>
  </p>
</div>
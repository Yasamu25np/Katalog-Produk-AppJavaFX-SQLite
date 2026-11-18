#!/bin/bash
cd "$(dirname "$0")"
echo "Sedang menjalankan aplikasi Katalog Produk..."

chmod +x mvnw
./mvnw javafx:run

if [ $? -ne 0 ]; then
    echo "Terjadi kesalahan saat menjalankan aplikasi."
    read -p "Tekan Enter untuk keluar..."
fi
@echo off
cd /d "%~dp0"
echo Sedang menjalankan aplikasi Katalog Produk...
call mvnw.cmd javafx:run
if %errorlevel% neq 0 (
    echo Terjadi kesalahan saat menjalankan aplikasi.
    pause
)
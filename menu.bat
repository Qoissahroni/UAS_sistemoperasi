@echo off
color F
:login
cls
echo -----------------------------------
echo ===================================
echo.
echo               LOGIN 
echo.
echo ===================================
echo.
echo -----------------------------------
set /p username= User       :
set /p password= Password   :
if %password% == qois (
    goto begin
) else (
echo Password salah
set /p x= enter....!!
goto login
)


:begin
cls
cls
echo -----------------------------------
echo ===================================
echo          HALAMAN UTAMA
echo ===================================
echo.
echo 1. Menu Aplikasi
echo 2. Menu Jaringan Komputer
echo 3. Menu Perbaikan Komputer
echo 4. Menu Setting
echo 5. Aplikasi Perhitungan
echo 6. Menu Akademik
echo 7. Menu Rental Mobil
echo 8. Menu Makanan Eropa
echo 9. exit
echo ===================================
echo -----------------------------------

set /p pil=Pilihan Menu Anda:

if %pil%==1 goto Aplikasi
if %pil%==2 goto Jarkom
if %pil%==3 goto Perkom
if %pil%==4 goto Setting
if %pil%==5 goto Aplikasi_perhitungan
if %pil%==6 goto Akademik
if %pil%==7 goto Rentalmobil
if %pil%==8 goto MakananEropa
if %pil%==9 goto keluar


    :Aplikasi
    cls
    echo ===================================
    echo -----------------------------------
    echo        MENU APLIKASI OFFICE
    echo -----------------------------------
    echo         [1] Microsoft Word
    echo         [2] Microsoft Excel
    echo         [3] PowerPoint
    echo         [4] Kembali
    echo         [0] Keluar
    echo.
    echo ===================================
    set /p "pilihmenu=Masukkan Pilihan Menu:"
    if %pilihmenu%==1 goto Word
    if %pilihmenu%==2 goto Excel
    if %pilihmenu%==3 goto Powerpoint
    if %pilihmenu%==4 goto Kembali
    if %pilihmenu%==0 goto Keluar

        :Word
        cls
        "C:\Program Files\Microsoft Office\root\Office16\WINWORD.exe"
        goto Aplikasi
        pause

        :Excel
        cls
        "C:\Program Files\Microsoft Office\root\Office16\EXCEL.exe"
        goto Aplikasi
        pause

        :Powerpoint
        cls
        "C:\Program Files\Microsoft Office\root\Office16\POWERPNT.exe"
        goto Aplikasi
        pause

        :Kembali
        goto begin

        :Keluar
        exit

    :Jarkom
    cls
    echo ===================================
    echo -----------------------------------
    echo      MENU JARINGAN KOMPUTER
    echo -----------------------------------
    echo    [1] Periksa koneksi internet
    echo    [2] Menampilkan informasi IP
    echo    [3] Kembali
    echo    [0] Keluar
    echo.
    echo ===================================
    set /p "pilihmenu=Masukkan Pilihan Menu:"
    if %pilihmenu%==1 goto periksa_koneksi
    if %pilihmenu%==2 goto tampilkan_ip
    if %pilihmenu%==3 goto Kembali
    if %pilihmenu%==0 goto Keluar

        :periksa_koneksi
        cls
        echo ----------------------------------- 
        echo Memeriksa koneksi internet...
        echo -----------------------------------
        echo.
        ping www.google.com -n 1 >nul
        if errorlevel 1 (
            echo Koneksi internet tidak tersedia.
        ) else (
            echo Koneksi internet tersedia.
        )
        pause
        goto Jarkom

        :tampilkan_ip
        cls
        echo -----------------------------------
        echo           Informasi IP
        echo -----------------------------------
        ipconfig
        pause
        goto Jarkom

        :Kembali
        goto begin

        :keluar
        exit

    :Perkom
    cls
    echo ===================================
    echo -----------------------------------
    echo      MENU PERBAIKAN KOMPUTER
    echo -----------------------------------
    echo    [1] Perbaiki File Sistem
    echo    [2] Register
    echo    [3] Kembali
    echo    [0] Keluar
    echo.
    echo ===================================
    set /p "pilihmenu=Masukkan Pilihan Menu:"
    if %pilihmenu%==1 goto perbaiki_file_sistem
    if %pilihmenu%==2 goto register
    if %pilihmenu%==3 goto Kembali
    if %pilihmenu%==0 goto keluar

        :perbaiki_file_sistem
        cls
        echo Menjalankan alat perbaikan file sistem...
        sfc /scannow
        echo Perbaikan file sistem selesai.
        pause
        goto Perkom

        :register
        cls
        echo echo Menjalankan Register...
        regedit
        pause
        goto Perkom

        :Kembali
        goto begin

        :keluar
        exit

    :Setting
    cls
    echo ===================================
    echo -----------------------------------
    echo            MENU SETTING
    echo -----------------------------------
    echo    [1] Setting Date
    echo    [2] Setting Sound
    echo    [3] Setting Language
    echo    [4] Kembali
    echo    [0] Keluar
    echo.
    echo ===================================
    set /p "pilihmenu=Masukkan Pilihan Menu:"
    if %pilihmenu%==1 goto Date
    if %pilihmenu%==2 goto Sound
    if %pilihmenu%==3 goto Language
    if %pilihmenu%==4 goto Kembali
    if %pilihmenu%==0 goto keluar

        :Date
        cls
        start timedate.cpl
        goto setting
        pause

        :Sound
        cls
        start SndVol.exe
        goto setting
        pause
        
        :Language
        cls
        start intl.cpl
        goto Setting
        pause

        :Kembali
        goto begin

        :keluar
        exit

    :Aplikasi_perhitungan
    cls
    echo ===================================
    echo -----------------------------------
    echo        APLIKASI PERHITUNGAN
    echo -----------------------------------
    echo    [1] Penjumlahan
    echo    [2] Pengurangan
    echo    [3] Pembagian
    echo    [4] Perkalian
    echo    [5] Kembali
    echo    [0] Keluar
    echo.
    echo ===================================
    set /p "pilihmenu=Masukkan Pilihan Menu:"
    if %pilihmenu%==1 goto Penjumlahan
    if %pilihmenu%==2 goto Pengurangan
    if %pilihmenu%==3 goto Pembagian
    if %pilihmenu%==4 goto Perkalian
    if %pilihmenu%==5 goto Kembali
    if %pilihmenu%==0 goto keluar
    
        :Penjumlahan
        cls
        echo -----------------------------------
        echo           PENJUMLAHAN 
        echo -----------------------------------
        set /p bil1=Masukkan bilangan pertama:
        set /p bil2=Masukkan bilangan kedua:
        set /a Hasil=%bil1% + %bil2%
        echo Hasil penjumlahan: %Hasil%
        pause
        goto Aplikasi_perhitungan

        :Pengurangan
        cls
        echo -----------------------------------
        echo           PENGURNGAN 
        echo -----------------------------------
        set /p bil1=Masukkan bilangan pertama:
        set /p bil2=Masukkan bilangan kedua:
        set /a Hasil=%bil1% - %bil2%
        echo Hasil penjumlahan: %Hasil%
        pause
        goto Aplikasi_perhitungan

        :Pembagian
        cls
        echo -----------------------------------
        echo           PEMBAGIAN
        echo -----------------------------------
        set /p bil1=Masukkan bilangan pertama:
        set /p bil2=Masukkan bilangan kedua:
        set /a Hasil=%bil1% / %bil2%
        echo Hasil penjumlahan: %Hasil%
        pause
        goto Aplikasi_perhitungan

        :Perkalian
        cls
        echo -----------------------------------
        echo           PERKALIAN
        echo -----------------------------------
        set /p bil1=Masukkan bilangan pertama:
        set /p bil2=Masukkan bilangan kedua:
        set /a Hasil=%bil1% * %bil2%
        echo Hasil penjumlahan: %Hasil%
        pause
        goto Aplikasi_perhitungan

        :Kembali
        goto begin

        :keluar
        exit
    
    :Akademik
    cls
    echo ===================================
    echo -----------------------------------
    echo           MENU AKADEMIK
    echo -----------------------------------
    echo   [1] Penilaian Mahasiswa
    echo   [2] Laporan Penilaian Mahasiswa
    echo   [3] Kembali
    echo   [0] Keluar
    echo.
    echo ===================================
    set /p "pilihmenu=Masukkan Pilihan Menu:"
    if %pilihmenu%==1 goto Penilaian_mahasiswa
    if %pilihmenu%==2 goto lpm
    if %pilihmenu%==3 goto Kembali
    if %pilihmenu%==0 goto keluar

        :Penilaian_mahasiswa
        cls
        echo -----------------------------------
        echo       Penilaian Mahasiswa
        echo -----------------------------------
        echo.
        set /p matkul=Masukkan Mata kuliah: 
        echo.
        set /p nilai=Masukkan Nilai : 

        if %nilai% geq 80 (
        set bobot=4
        set huruf=A
        ) else if %nilai% geq 70 (
        set bobot=3
        set huruf=B
        ) else if %nilai% geq 60 (
        set bobot=2
        set huruf=C
        ) else if %nilai% geq 50 (
        set bobot=1
        set huruf=D
        ) else if %nilai% geq 0 (
        set bobot=0
        set huruf=E
        ) else (
        echo Nilai tidak valid. Silakan coba lagi.
        pause
        goto Penilaian_mahasiswa
        )

        echo.
        echo -----------------------------------
        echo         Hasil penilaian:
        echo -----------------------------------
        echo.
        echo Matkul: %matkul%
        echo Bobot: %bobot%
        echo Huruf: %huruf%
        pause
        goto Akademik

        :lpm
        cls
        echo -----------------------------------
        echo    Laporan Penilaian Mahasiswa
        echo -----------------------------------
        echo.
        set /p nim=Masukkan NIM Mahasiswa:
        set /p nama=Masukkan Nama Mahasiswa:
        set /p nilai=Masukkan Nilai Mahasiswa:

        echo NIM: %nim% >> laporan_Mahasiswa.txt
        echo Nama: %nama% >> laporan_Mahasiswa.txt
        echo Nilai: %nilai% >> laporan_Mahasiswa.txt
        echo. >> laporan_Mahasiswa.txt

        echo Laporan penilaian mahasiswa berhasil dibuat (laporan_Mahasiswa.txt).
        pause
        goto Akademik

        :Kembali
        goto begin

        :keluar
        exit
    :Rentalmobil
    cls
    echo =================================
    echo           RENTAL MOBIL
    echo ---------------------------------
    echo    [1] Avanza
    echo    [2] Alphart
    echo    [3] Kembali
    echo ---------------------------------

    set /p "pilihmenu=Masukkan Pilihan Menu:"
    if %pilihmenu%==1 goto avanza
    if %pilihmenu%==2 goto Alphart
    if %pilihmenu%==3 goto Kembali

        :avanza
        cls
        echo ================================
        echo             Avanza
        echo ================================
        echo Harga sewa = 500.0000 /hari
        echo.
        echo ================================
        pause
        goto Rentalmobil

        :Alphart
        cls
        echo ================================
        echo             Alphart
        echo ================================
        echo Harga sewa = 1.000.0000 /hari
        echo.
        echo ================================
        pause
        goto Rentalmobil

        :Kembali
        goto begin

    :MakananEropa
    cls
    echo =================================
    echo          Menu Makanan Eropa
    echo ---------------------------------
    echo    [1] pizza
    echo    [2] spagetti
    echo    [3] Kembali
    echo ---------------------------------

    set /p "pilihmenu=Masukkan Pilihan Menu:"
    if %pilihmenu%==1 goto pizza
    if %pilihmenu%==2 goto spagetti
    if %pilihmenu%==3 goto Kembali

        :pizza
        cls
        echo ================================
        echo             pizza
        echo ================================
        echo Harga sewa = 120000 /pcs
        echo.
        echo ================================
        pause
        goto MakananEropa

        :spagetti
        cls
        echo ================================
        echo            spagetti
        echo ================================
        echo Harga sewa = 500.0000 /pcs
        echo.
        echo ================================
        pause
        goto makananEropa

        :Kembali
        goto begin
    :Keluar
    exit







        






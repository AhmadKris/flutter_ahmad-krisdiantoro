# (07) Branching - Looping - Function

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44<br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

## Task
### Task 00
Fungsi Main.<br>
![main](/07_Branching%20-%20Looping%20-%20Function/screenshots/voidMain.png)

Penjelasan Code :
1. baris 4-7 : Cetak ke layar.
2. baris 8-9 : Mengambil inputan user. 
3. baris 11-26 : Switch Case statement.
4. baris 12-16 : jika user memilih menu 1 maka pada case 1 akan memanggil fungsi nilai().
5. baris 17-21 : jika user memilih menu 2 maka pada case 2 akan memanggil fungsi faktorial().
6. baris 22-25 : jika user memilih menu 3 maka pada case 3 akan menghentikan program.

Output Code : <br>
![output_main](/07_Branching%20-%20Looping%20-%20Function/screenshots/outputMain.png)

### Task 01
Fungsi Nilai.<br>
![nilai](/07_Branching%20-%20Looping%20-%20Function/screenshots/voidNilai.png)

Penjelasan Code : 
1. baris 33-34 : Mengambil inputan user.
2. baris 36-44 : Percabangan untuk menentukan apa yang akan di cetak ke layar berdasarkan apa yang di input oleh user.
    - n > 70 = "Nilai A"
    - n > 40 = "Nilai B"
    - n > 0 = "Nilai C"
    - Selain itu cetak "Nilai Kosong !!!"
3. baris 47-48 : Mengambil inputan user.
4. baris 49-53 : Percabangan untuk menentukan apa yang akan di eksekusi berdasarkan input user.
    - ulang = 'y' maka akan memanggil fungsi nilai()
    - selain itu maka akan memanggil fungsi main()

Output : <br>
![outputNilai](/07_Branching%20-%20Looping%20-%20Function/screenshots/outputNilai.png)

### Task 02
Fungsi Faktorial.<br>
![faktorial](/07_Branching%20-%20Looping%20-%20Function/screenshots/voidFaktorial.png)

Penjelasan Code :
1. baris 61-62 : Mengambil input user.
2. baris 63 : Cetak ke layar.
3. baris 64-71 : Perulangan 'for'.
    - Perulangan dimulai dari 1 dan akan berhenti apabila i <= input user.
    - hasil = hasil * i
    - baris 67-70 : mencetak isi variabel i dengan kondisi jika i != a akan cetak *
4. baris 73 : Cetak ke layar.
5. baris 76-77 : Mengambil input user.
6. baris 78-82 : Percabangan untuk menentukan apa yang akan di eksekusi berdasarkan input user.
    - ulang = 'y' maka akan memanggil fungsi faktorial()
    - selain itu maka akan memanggil fungsi main()
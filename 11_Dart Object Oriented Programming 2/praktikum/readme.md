# (11) Dart Object Oriented Programming 2

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44 <br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

## Task
### Task 01

![task1](/11_Dart%20Object%20Oriented%20Programming%202/screenshots/task1.png)

Penjelasan Code : 
1. Baris 1-6 : Class BangunRuang dengan 3 property dan 1 Method.
2. Baris 8-16 : Class Kubus dengan extends Class BangunRuang. Memiliki tambahan property sisi, dan pada method volume sudah ada aksi.
3. Baris 18-25 : Class Balok extends Class BangunRuang. dengan method volume yang sudah berisi code/aksi.

### Task 02
![task2](/11_Dart%20Object%20Oriented%20Programming%202/screenshots/task2.png)

Penjelasan Code :
1. Baris 29 : Membuat objek List bangunRuang[].
2. Baris 30 dan 31 : Pemberian nilai pada Class Kubus dan Balok.
3. Baris 33-35 : Perulangan untuk mengambil semua isi dari bangunRuang[].
    - Baris 34 : Cetak ke layar.

Output : <br>
![outputTask2](/11_Dart%20Object%20Oriented%20Programming%202/screenshots/outputTask2.png)

### Task 03
![task3](/11_Dart%20Object%20Oriented%20Programming%202/screenshots/task3.png)

Penjelasan Code : 
1. Baris 1-3 : Class Matematika dengan satu Method.
2. Baris 5-23 : Class KelipatanPersekutuanTerkecil implements Class Matematika.
    - baris 6-7 : property Class KelipatanPersekutuanTerkecil.
    - baris 8 : Pembuatan Constructor.
    - baris 10-22 : method hasil dengan body code untuk mencari kelipatan Persekutuan Terkecil.
3. Baris 25-41 : Class FaktorPersekutuanTerbesar implements Class Matematika.
    - baris 26-27 : property Class FaktorPersekutuanTerbesar.
    - baris 28 : Pembuatan Constructor.
    - baris 30-40 : method hasil dengan body code untuk mencari Faktor Persekutuan Terbesar.
### Task 04 
![task4](/11_Dart%20Object%20Oriented%20Programming%202/screenshots/task4.png)

Penjelasan Code : 
1. Baris 44 : Membuat List data[].
2. Baris 45-46 : Pemberian nilai pada Class Kelipatan Persekutuan Terkecil dan Class Faktor Persekutuan Terbesar.
3. Baris 48-50 : Perulangan untuk mengambil isi dari data[].
    - baris 49 : Cetak ke layar.

Output : <br>
![outputTask4](/11_Dart%20Object%20Oriented%20Programming%202/screenshots/outputTask4.png)

### Task 05
![task5](/11_Dart%20Object%20Oriented%20Programming%202/screenshots/task5_1.png)
![task5.1](/11_Dart%20Object%20Oriented%20Programming%202/screenshots/task5_2.png)

Penjelasan Code : 
1. Baris 1-7 : Class Hewan.
    - baris 2 : Property.
    - baris 4 : Constructor. 
    - baris 6 : Method.
2. Baris 9-23 : Class Kucing extends Class Hewan.
    - baris 11-12 : Cetak ke layar.
    - baris 16-18 : Method Suara().
    - baris 20-22 : Method Lari().
3. Baris 25-37 : Class Unggas extends Class Hewan.
    - Ditambahkan 1 property keluarga.
4. Baris 39-49 : Class Burung Extends Class Unggas.
    - Ditambahkan 1 Method Terbang(). 
5. Baris 51-68 : Fungsi main().
    - baris 52 : Membuat list data[];
    - baris 53,57,60 : pembuatan objek dan memasukan nilai ke masing - masing Class.
    - baris 54,55,58,61,62 : Pemanggilan method dari Class.
6. Baris 65-67 : Perulangan untuk mengambil isi dari data[].
    - baris 66 : Cetak ke layar.

Output : <br>
![outputTask5](/11_Dart%20Object%20Oriented%20Programming%202/screenshots/outputTask5.png)

### Task 06
![task6](/11_Dart%20Object%20Oriented%20Programming%202/screenshots/task6_1.png)
![task6.1](/11_Dart%20Object%20Oriented%20Programming%202/screenshots/task6_2.png)

Penjelasan Code : 
1. Baris 1-9 : Class Manusia.
    - baris 2-4 : Property.
    - baris 6 : Constructor.
    - baris 8 : Method.
2. Baris 11-34 : Class Dosen extends Class Manusia.
    - baris 12-14 : Property tambahan pada Class Dosen.
    - baris 16-24 : Constructor, dengan isi body untuk cetak ke layar.
    - baris 26-29 : Method pewarisan yang di Override.
    - baris 31-33 : Tambahan Method untuk class Dosen.
3. Baris 36-60 : Class Mahasiswa extends Class Manusia.
    - baris 37-38 : Property tambahan untuk Class Mahasiswa.
    - baris 40-46 : Constructor, dengan isi body untuk cetak ke layar.
    - baris 48-51 : Method pewarisan yang di Override.
    - baris 53-55 : Method tambahan untuk class Dosen.
    - baris 57-59 : Method tambahan untuk class Dosen.
4. Baris 62-79 : Fungsi main().
    - baris 63 : Pembuatan list data[].
    - baris 65-66 dan 70-71 : Pembuatan objek dan Memasukan nilai ke masing-masing Class.
    - baris 67,68,72,73,74 : Pemanggilan method dari Class.
    - baris 76-78 : Perulanagan untuk mengambil isi dari list data[] kemudian cetak ke layar.

Output : <br>
![outputTask6](/11_Dart%20Object%20Oriented%20Programming%202/screenshots/outputTask6.png)


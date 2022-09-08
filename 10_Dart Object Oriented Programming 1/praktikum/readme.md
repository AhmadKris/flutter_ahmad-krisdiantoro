# (10) Dart Object Oriented Programming 1

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44 <br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

## Task
### Task01
1. Class hewan <br>
![01_hewan](/10_Dart%20Object%20Oriented%20Programming%201/screenshots/01_hewan.png)

Penjelasan Code : 
Class hewan yang berisi 1 property.

2. Class mobil <br>
![01_mobil](/10_Dart%20Object%20Oriented%20Programming%201/screenshots/01_mobil.png)

    Penjelasan Code : 
    - baris 1 : import hewan.dart
    - baris 3-26 : merupakan Class mobil yang mempunyai 2 property dan 1 method.
    - baris 4 : property kapasitas tipe konstanta dengan value/isi 1000
    - baris 5 : Merupakan sebuah list muatan dari class hewan.
    - baris 7-25 : method tambahMuatan dengan parameter muatanbaru.
        - baris 9-11 : untuk menghitung total dari muatan[].berat dan dimasukan ke variabel 'isi'.
        - baris 12 : cetak ke layar.
        - baris 13 : menghitung jumlah 'isi' + 'muatanBaru' kemudian hasilnya di tampung ke varibel 'sementara'.
        - baris 14 : cek kondisi apakah 'sementara' kurang dari atau sama dengan 'kapasitas' jika iya maka akan eksekusi code yang berada dalam if
            - baris 16 : menambahkan 'muatanBaru' ke dalam Class hewan property 'berat'
            - baris 18 : menambahkan 'muatanBaru' ke dalam List muatan.
            - baris 19 : cetak ke layar.
        - baris 20 : jika kondisi di baris 14 tidak terpenuhi maka akan eksekusi code yang berada di else.
            - baris 21-23 : cetak ke layar.
    
3.Class main <br>
![01_main](/10_Dart%20Object%20Oriented%20Programming%201/screenshots/01_main.png)

Penjelasan Code :
1. baris 1-2 : import hewan.dart dan mobil.dart
2. baris 5 : membuat objek.
3. baris 6 : memasukan nilai ke objek h1.berat
4. baris 8 : membuat objek.
5. baris 9 : menambahkan nilai dari objek h1 ke objek m.muatan
6. baris 10,12,14 : memanggil method tambahMuatan dari objek m kemudian dimasukan nilai ke parameter.

### Task 02
1. Class hewan <br>
![02_hewan](/10_Dart%20Object%20Oriented%20Programming%201/screenshots/02_hewan.png)

Penjelasan Code : 
Class hewan yang berisi 1 property.

2. Class mobil <br>
![02_mobil](/10_Dart%20Object%20Oriented%20Programming%201/screenshots/02_mobil.png)

Penjelasan Code :
disini saya akan langsung menjelaskan di bagian method totalMuatan.
- baris 27-34 : method totalMuatan
- baris 29 - 31 : menghitung jumlah muatan[].berat kemudian ditampung ke variabel 'total'.
- baris 32 : cetak ke layar.

3.Class main <br>
![02_main](/10_Dart%20Object%20Oriented%20Programming%201/screenshots/02_main.png)

Penjelasan Code : 
1. baris 1-2 : import hewan.dart dan mobil.dart
2. baris 5 : membuat objek.
3. baris 6 : memasukan nilai ke objek h1.berat
4. baris 8 : membuat objek.
5. baris 9 : menambahkan nilai dari objek h1 ke objek m.muatan
6. baris 10,13,16 : memanggil method tambahMuatan dari objek m kemudian dimasukan nilai ke parameter.
7. baris 11,14,17 : memanggil method totalMuatan dari objek m.
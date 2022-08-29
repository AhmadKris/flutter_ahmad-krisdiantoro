# (06) Basic Dart Programming

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44<br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

## Summary
Pada section ini saya belajar : 
1. Bahasa Pemrograman Dart<br>
    Dart adalah bahasa pemrograman yang dikembangkan oleh google dan berbasis cross platform.
2. Fungsi Main<br>
    Fungsi main adalah bagian pertama yang di jalankan oleh program.
3. Variabel<br>
    Variabel adalah sebuah tempat untuk menyimpan data, memiliki nama dan tipe data tertentu.
4. Konstanta<br>
    Konstanta adalah tempat untuk menyimpan data yang memiliki nama dan tipe data tertentu namun nilainya tidak dapat diubah atau tetap.
5. Tipe Data<br>
    Tipe data adalah pengklasifikasian sebuah data berdasarkan jenis yang dapat dikelola.
6. Operator<br>
    Sebuah simbol yang digunakan untuk operasi pengolahan data.
    1. Arithmetic. <br>
    +, -, *, /, %
    2. Assignment.<br>
    =, +=, -=, *=, /=, %=
    3. Comparisson.<br>
    ==, <, >, <=, >=,
    4. Logical.<br>
    &&, ||, !
7. Anonymous Function
    Fungsi yang tidak memiliki nama.
8. Arrow Function.
    Fungsi yang bisa memiliki nama atau tidak, berisi 1 data dari proses maupun data statis. Nilai return di ambil dari data tersebut.
9. Async-Await.
    - Menjalankan beberapa proses tanpa perlu menunggu.
    - Proses ditulis dalam bentuk fungsi.
    - Await akan menunggu hingga proses async selesai.
10. Collection.
    Suatu objek yang dapat digunakan untuk menyinpan sekumpulan objek.

## Task 
### Task 01
Implementasi rumus luas lingkaran pada program dart.<br>
![lingkaran](screenshots/lingkaran.png)
Penjelasan code : 
1. import library 'dart:io'
2. deklarasi sebuah konstanta dengan nama 'phi' dengan nilai '22 / 7'.
3. deklarasi variabel 'hasil'.
4. membuat sebuah inputan dinamis yang nantinya akan di simpan di variabel 'r'.
5. membuat rumus lingkaran 'hasil = phi * r * r'.
6. Mencetak kalimat 'Luas Lingkaran Adalah = ' dengan memanggil isi dari variabel '$hasil'.

### Task 02
Menyambung String menjadi sebuah kalimat.<br>
![kalimat](screenshots/kalimat.png)
Penjelasan code : 
1. Membuat sebuah fungsi main.
2. Mendeklarasi variabel dengan tipe data String 'nama', 'fakultas', 'progdi'.
3. Mencetak kalimat dengan memanggil isi dari masing-masing variabel.
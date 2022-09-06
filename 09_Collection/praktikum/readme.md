# (08) Advance Function - Async-Await

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44<br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

## Task
### Task 01
Fungsi dengan dua parameter.<br>
![task1](/08_Advance%20Function%20-%20Async-Await/screenshots/task1.png)

Penjelasan Code :
1. baris ke 7-15 : perulangan for.
    - melakukan perulangan sebanyak 4 kali.
    - baris 8 : cetak ke layar.
    - baris 9 : mengambil input user kemudian di tampung ke variabel 'input'.
    - baris 10 : percabanagan if, 'input' tidak boleh kosong.
    - baris 11 : memasukan 'input' user ke dalam list 'isi[]' dan juga mengubah/parsing tipe data ke int.
2. baris 16 : cetak ke layar.
3. baris 17 : mengambil input user kemudian di tampung ke variabel 'angka' dan juga mengubah/parsing tipe data ke int.
4. baris 19 : melemparkan nilai ke fungsi 'perkalian' dengan 2 parameter.
5. baris 22-25 : fungsi 'perkalian' dengan 2 parameter.
6. baris 26-27 : cetek ke layar isi variabel.
7. baris 29-33 : perulangan for.
    - melakukan perulangan sebanyak 4 kali.
    - baris 30 : operasi untuk setiap elemen didalam 'lis [i]' dikalikan dengan isi variabel 'kali'.
    - setiap hasil perkalian dimasukkan ke dalam variabel List 'lisBaru'.
    - baris 32 : cetak ke layar.
8. baris 34 : cetak ke layar dan menampilkan isi dari variabel 'lisBaru'.

Output : <br>
![outputTask1](/08_Advance%20Function%20-%20Async-Await/screenshots/outputTask1.png)

### Task 02
List dan Map.<br>
![task2](/08_Advance%20Function%20-%20Async-Await/screenshots/task2.png)

Penjelasan Code : 
1. baris 2-7 : merupakan sebuah list 'student' dimana terdapat list lagi di dalamnya.
2. baris 9-16 : perulangan for.
    - melakukan perulangan sebanyak 4 kali.
    - baris 10 - 14 : merupakan sebuah map 'key' yang terdapat 3 keys didalam.
    - baris 15 : cetak ke layar.
    - saya hanya menggunakan perulanagan pada barisnya saja karna logika saya untuk kolom belum memerlukan sebuah perulangan.

Output : <br> 
![outputTask2](/08_Advance%20Function%20-%20Async-Await/screenshots/outputTask2.png)

### Task 03
Rata - rata list.<br>
![task3](/09_Collection/screenshots/task3.png)

Penjelasan Code : 
1. baris 4-6 : deklarasi variabel.
2. baris 8-12 : perulanagan for untuk mengambil input dari user sebanyak 5 kali dan akan disimpan ke dalam variabel list 'matrix[]'
3. baris 13-15 : perulangan for untuk mengabil elemen-elemen yang ada di dalam list 'matrix[]' kemudian semua elemen akan dijumlahkan.
4. baris 16 : rumus mencari nilai rata-rata.
5. baris 17 : mencetak ke layar.

Output : <br>
![outputTask3](/09_Collection/screenshots/outputTask3.png)

### Task 04
Array 2D Matrix.
![task4](/09_Collection/screenshots/task4.png)

Penjelasan Code : 
1. baris 4 : deklarasi variabel list.
2. baris 6-13 : perulanagan for bersarang untuk mengambil input dari user sebanyak 5 baris dan 4 kolom, kemudian setiap input tersebut akan disimpan ke variabel list 'matrix[]'.
3. baris 15-32 : perulanagan for bersarang untuk mengambil semua elemen yang ada di variabel list 'matrix[]'
    - baris 16-19 : deklarasi variabel.
    - baris 21 : menjumlahkan elemen perbaris.
    - baris 23 : mencari nilai rata-rata dari setiap baris.
    - baris 25-27 : mencari nilai terkecil dari setiap baris.
    - baris 29-31 : mencari nilai terbesar dari setiap baris.
4. baris 33-36 : mencetak ke layar.

Output Code : <br>
![outputTask4](/09_Collection/screenshots/outputTask4.png)

### Task 05
Operasi Aritmatika.
![task5](/09_Collection/screenshots/task5.png)

Penjelasan Code : 
1. baris 2 : cek kondisi apabila terpenuhi lanjut ke proses berikutnya.
2. baris 3-5 : deklarasi variabel.
    - baris 4-5 : variabel 'a' dan 'b' untuk menyimpan elemen dari baris 1 / 'args[0]' dan 3 / 'args[2]' yang sudah di parsing ke tipe data double.
3. baris 7-22 : switch case statment untuk 'args[1]'
    - jika 'args[1]' = '+' : hasil = a + b
    - jika 'args[1]' = '-' : hasil = a - b
    - jika 'args[1]' = 'x' : hasil = a * b
    - jika 'args[1]' = '/' : hasil = a / b
    - Selain dari itu cetak 'Error!'
4. baris 23 : cetak ke layar.
5. baris 25 : cetak ke layar apabila kondisi dari baris 2 tidak terpenuhi.

Output Code : <br>
![outputTask5](/09_Collection/screenshots/outputTask5.png)
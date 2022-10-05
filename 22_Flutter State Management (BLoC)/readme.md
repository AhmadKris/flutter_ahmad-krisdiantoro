# (22) Flutter State Management (BLoC)

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44 <br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

## Summary
Pada section ini saya belajar : 
1. Declarative UI => flutter membangun UInya pad ascreen untuk mencerminkan keadaan state saat ini.
2. State => sebuah widget yang sedang aktif dan menyimpan data pada memori. flutter akan membangun ulang widget ketika terjadi perbahan pada datanya.
3. Ephemeral State => Digunakan ketika tidak ada widget pada tree yang mengakses data widgetnya.
4. AppState => Digunakan ketika bagian lain membutuhkan akses data state widgetnya. 
5. BLoC (Business Logic Component) => Memisahkan antara buusiness logic dengan UI.
6. Cara kerja BLoC => Menerima event sebagai input, Dianalisa dan dikelola di dalam BLoC, Menghasilkan state sebagai output.

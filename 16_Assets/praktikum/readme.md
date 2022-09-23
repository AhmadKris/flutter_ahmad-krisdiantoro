# (16) Assets

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44 <br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

## Task
### Task 01
1. Menampilkan 3 gambar menggunakan GridView
- Membuat GridView
    ```dart:
    GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsetsDirectional.all(10),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [...
            child: Ink.image(
                fit: BoxFit.fill,
                image: const AssetImage("images/merbabu.jpg"),
                ),
            ],
        );       
    ```
- Output<br>
![output1](/16_Assets/screenshots/output1.png)

### Task 02
- Menampilkan gambar dari asset dan ketika di tap/tekan akan berpindah halaman
    ```dart:
    InkWell(
            onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Merbabu()),
                );
            },
            child: Ink.image(
                fit: BoxFit.fill,
                image: const AssetImage("images/merbabu.jpg"),
                ),
        ),
    ```
- Halaman baru yang menampilkan gambar layar penuh
    ```dart:
    Scaffold(
      body: Image.asset(
        "images/merbabu.jpg",
        height: 900,
        fit: BoxFit.fill,
      ),
    );
    ```
- Output <br>
![output2](/16_Assets/screenshots/output2.png)
![output2](/16_Assets/screenshots/output3.png)
![output2](/16_Assets/screenshots/output4.png)

    
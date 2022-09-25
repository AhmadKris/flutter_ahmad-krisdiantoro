# Weekly 2

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44 <br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

## Penjelasan Code
##### Karna masih melanjutkan dari project sebelumya saya hanya akan menjelaskan code tambahanya

1. Membuat drawer di sebelah kanan
```dart:
endDrawer: const Draw(),
```
2. Membuat button pada drawer
```dart:
MaterialButton(
              minWidth: 100,
              color: Colors.lightBlue,
              onPressed: () {},
              child: const Text('About Us'),
            ),
```
3. Membuat about us
```dart:
Text(
    'About Us',
    style: GoogleFonts.robotoCondensed(
    fontSize: 28, fontWeight: FontWeight.bold),
    ),
```
4. GridView dengan Card
```dart:
GridView.count(
              padding: const EdgeInsets.all(5),
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              children: [
                Card(...code..),
                ]
            ),
```
5. Membuat Card
```dart:
Card(
    color: Colors.grey,
    child: Container(
    padding: const EdgeInsets.all(5),
    child: Column(
        children: [
            const Icon(
                Icons.card_giftcard,
                color: Colors.black,
                size: 25,
            ),
            Text(
                'Gift Card',
                style: GoogleFonts.robotoCondensed(
                color: Colors.black, fontSize: 16),
            ),
            Text(
                '\nAplikasi Bertukar Hadiah',
                style: GoogleFonts.robotoCondensed(
                color: Colors.black, fontSize: 12),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                            'Selengkapnya',
                            style: GoogleFonts.robotoCondensed(
                            color: Colors.black, fontSize: 10),
                        ),
                    ),
            ],
        ),
    ),
),
```
## Output
![out1](/Weekly2/screenshot/output1.jpg)
![out2](/Weekly2/screenshot/output2.jpg)
![out3](/Weekly2/screenshot/output3.jpg)
![out4](/Weekly2/screenshot/output4.jpg)
# (19) Dialog Bottom Sheet

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44<br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

## Task 
### Task 01
Membuat GridView untuk menampilkan gambar
```dart
GridView.builder(
  padding: const EdgeInsets.all(10),
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,
    childAspectRatio: 1 / .8,
  ),
  itemBuilder: (context, index) => InkWell(
      child: Ink.image(
      fit: BoxFit.cover,
      image: NetworkImage(url[index]),
    ),
  ),
  itemCount: url.length,
),
```
Membuat list url 
```dart
final url = ["Berisi url gambar"];
```

### Task 02 
Menampilkan gambar pada Bottom Sheet saat ditekan/tap
```dart
onTap: () {
  showModalBottomSheet(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
      top: Radius.circular(20),
    )),
    context: context,
    builder: (context) => Padding(
      padding: const EdgeInsets.all(10),
      child: Image(
        image: NetworkImage(url[index]),
      ),
    ),
  );
},
```

### Task 03
Menampilkan gambar pada AlretDialog saat long press
```dart
onLongPress: () {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text(
        'Alert Dialog',
        textAlign: TextAlign.center,
      ),
      content: Image(
        image: NetworkImage(url[index]),
      ),
    ),
  );
},
```

## Output
Tampilan Awal <br>
![out1](/19_Dialog%20Bottom%20Sheet/screenshots/out1.png)

BottomSheet<br>
![out2](/19_Dialog%20Bottom%20Sheet/screenshots/out2.png)

AlertDialog<br>
![out3](/19_Dialog%20Bottom%20Sheet/screenshots/out3.png)
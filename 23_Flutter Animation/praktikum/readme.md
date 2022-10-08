# (23) Flutter Animation

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44 <br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

## Task 

### Task 01

Membuat trigger isTrue dengan nilai awal false
```dart
bool isTrue = false;
```
Menampilkan gambar dari internet
```dart
    child: const Image(
      fit: BoxFit.fill,
      image: NetworkImage(
          'https://asset.kompas.com/crops/FP4yz3nX6X_3wjKvz4lb3CTZXQY=/124x0:1622x999/750x500/data/photo/2019/12/16/5df735db5ae62.jpg'),
    ),         
```
AnimatedContainer
```dart
AnimatedContainer(
  width: isTrue ? 300 : 50,
  height: isTrue ? 300 : 50,
  duration: const Duration(milliseconds: 500),
),
```
Fungsi onTap pada InkWell
```dart
InkWell(
    onTap: () {
      setState(() {
        isTrue = !isTrue;
      });
    },
),
```

### Task 02
Transition dari Flutter Animation => Contact
```dart
onPressed: () {
      Navigator.of(context).push(routeContact());
    },
```
routeContact
```dart
Route routeContact() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const ContactScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      final tween = Tween(begin: begin, end: end);
      final offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
```
Transition dari Contact ke Create New Contact. disini saya menggunakan package page_transition: ^2.0.9.
```dart
onPressed: () {
  Navigator.push(
    context,
    PageTransition(
      type: PageTransitionType.fade,
      child: const CreateContact(),
      duration: const Duration(milliseconds: 400),
    ),
  );
}
```

### Output 
![gif](/23_Flutter%20Animation/screenshots/output.gif)
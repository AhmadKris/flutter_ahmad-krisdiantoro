# (20) Flutter Navigation

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44 <br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

## Task 
### Task 01
Halaman Contacts
```dart
return Scaffold(
    appBar: AppBar(
      title: const Text('Contacts'),
      centerTitle: true,
    ),
    body: Container(
      padding: const EdgeInsets.all(5),
      child: ListView.builder(
        itemCount: contact.length,
        itemBuilder: ((context, index) {
          return ListTile(
            title: Text(contact[index].nama),
            subtitle: Text(contact[index].nomor),
            leading: CircleAvatar(
              child: Text(contact[index].nama[0]),
            ),
          );
        }),
      ),
    ),
```
Navigator pushNamed ke Create Contact
```dart
FloatingActionButton(
    onPressed: () {
      Navigator.of(context)
          .pushNamed('/AddPerson', argumentstambahContact);
    },
    child: const Icon(Icons.person_add),
  ),
  const SizedBox(
    height: 10,
  ),
```
Navigator push() ke History
```dart
FloatingActionButton(
    onPressed: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const History(),
        ),
      );
    },
    child: const Icon(Icons.history),
  )
```
Ketika menggunakan Navigator pushNamed maka pada MaterialApp harus di daftarkan initialRoute dan routesnya.
```dart
initialRoute: '/Task01',
routes: {
  '/Task01': (context) => const Task01(),
  '/AddPerson': (context) => const AddPerson(),
},
```

## Output
![out1](/20_Flutter%20Navigation/screenshots/out1.png) <br> 
![out2](/20_Flutter%20Navigation/screenshots/out2.png) <br>
![out3](/20_Flutter%20Navigation/screenshots/out3.png) <br>
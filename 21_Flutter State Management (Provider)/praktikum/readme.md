# (21) Flutter State Management (Provider)

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44 <br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

## Task

### Task01
Task 01 sama tidak akan saya jelaskan karna saya mengambil dari projek task 17

### Task02
1. Membuat class provider 
```dart
class ContactProvider with ChangeNotifier {
// Membuat list
  final List<Contact> _contacts = [
    Contact(nama: 'Ahmad', nomor: '01234567890', email: 'ahmad@gmail.com')
  ];


  List<Contact> get contacts => [..._contacts];

// Fungsi untuk menambah contact
  void tambah(Contact contact) {
    _contacts.add(contact);
    notifyListeners();
  }

// Fungsi untuk menghapus contact
  void hapus(String id) {
    final targetIndex = _contacts.indexWhere((element) => element.id == id);
    if (targetIndex != -1) {
      _contacts.removeAt(targetIndex);
      notifyListeners();
    }
  }
}
```
2. Mendaftarkan provider di main
```dart
(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => ContactProvider(),
    ),
```

3. Memanggil provider di HomePage()
```dart
final contact = Provider.of<ContactProvider>(context).contacts;
```

4. Menampilkan data contact
```dart
...
itemCount: contact.length,
  itemBuilder: ((context, index) {
    return ListTile(
      title: Text(contact[index].nama),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(contact[index].nomor),
          Text(contact[index].email),
        ],
      ),
...
```

5. Memanggil fungsi hapus dari provider
```dart
onPressed: () {
    Provider.of<ContactProvider>(context, listen: false).hapus(contact[index].id);
    Navigator.pop(context);
  },
```
6. Fungsi tambah contact
```dart
void _onSubmit() {
    formKey.currentState!.save();
    final contactBaru = Contact(
        nama: dataBaru['nama']!,
        nomor: dataBaru['nomor']!,
        email: dataBaru['email']!);
    // memanggil fungsi tambah dari provider
    Provider.of<ContactProvider>(context, listen: false).tambah(contactBaru);
  }
```

## Output 
![out1](/21_Flutter%20State%20Management%20(Provider)/screenshots/out1.png)<br>
![out2](/21_Flutter%20State%20Management%20(Provider)/screenshots/out2.png)<br>
![out3](/21_Flutter%20State%20Management%20(Provider)/screenshots/out3.png)<br>
![out4](/21_Flutter%20State%20Management%20(Provider)/screenshots/out4.png)<br>
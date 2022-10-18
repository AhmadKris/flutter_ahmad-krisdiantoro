# (26) MVVM Architecture

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44<br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

## Task

1. MVVM <br>
![mvvm](/26_MVVM%20Architecture/screenshots/mvvm.png)
2. Contact Model
```dart
class Contact {
  late String id;
  String name;
  String phone;
  String email;

  Contact({required this.name, required this.phone, required this.email}) {
    id = const Uuid().v1();
  }
}
```
3. View Model
```dart
class ContactProvider with ChangeNotifier {
  final List<Contact> _contacts = [];

  List<Contact> get contacts => [..._contacts];

  void addContact(Contact contact) {
    _contacts.add(contact);
    notifyListeners();
  }

  void deleteContact(String id) {
    final targetIndex = _contacts.indexWhere((element) => element.id == id);
    if (targetIndex != -1) {
      _contacts.removeAt(targetIndex);

      notifyListeners();
    }
  }
}
```
4. Add Button
```dart
floatingActionButton: FloatingActionButton(
  onPressed: () {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const AddContact()));
  },
  child: const Icon(Icons.add),
),
```
5. View Contact Jika Kosong 
```dart
class EmptyContact extends StatelessWidget {
  const EmptyContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.contact_phone),
          Text('Contact Kosong!'),
        ],
      ),
    );
  }
}
```
6. View Contact Jika Tidak Kosong
```dart
return Container(
      padding: const EdgeInsets.all(5),
      child: ListView.builder(
        itemCount: contact.length,
        itemBuilder: ((context, index) {
          return ListTile(
            title: Text(contact[index].name),
            subtitle: Text(contact[index].phone),
            trailing: InkWell(
              ...
              child: const Icon(Icons.delete),
            ),
            leading: CircleAvatar(
              child: randomAvatar(r.nextInt(1000).toString()),
            ),
            ...
          );
        }),
      ),
    );
```
7. Fungsi Delete Contact
```dart
trailing: InkWell(
  onTap: () {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Hapus Contact ?'),
            actions: [
              TextButton(
                onPressed: () {
                  Provider.of<ContactProvider>(context,
                          listen: false)
                      .deleteContact(contact[index].id);
                  Navigator.pop(context);
                },
                child: const Text('Ya'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Batal'),
              ),
            ],
          );
        });
  },
  child: const Icon(Icons.delete),
),
```
8. Fungsi onTap Untuk ke DetailContact 
```dart
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => DetailContact(contact[index]),
    ),
  );
},
```
9. DetailContact
```dart
class DetailContact extends StatelessWidget {
  final Contact contact;
  const DetailContact(this.contact, {super.key});

  @override
  Widget build(BuildContext context) {
    final r = Random();
    return Scaffold(
      appBar: AppBar(
        title: Text(contact.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                child: randomAvatar(r.nextInt(1000).toString()),
              ),
              Text(
                contact.name,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: const Icon(Icons.call_outlined),
                title: Text(contact.phone),
                subtitle: const Text('mobile | Indonesia'),
                trailing: const Icon(Icons.message_outlined),
              ),
              ListTile(
                leading: const Icon(Icons.mail_outline),
                title: Text(contact.email),
                subtitle: const Text('Email'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
```
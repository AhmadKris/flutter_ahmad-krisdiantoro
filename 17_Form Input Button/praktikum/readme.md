# (17) Form Input Button 

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44 <br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

## Task
### Task 01
Main()
```dart
theme: ThemeData.dark(),
      initialRoute: Task01.routeName,
      routes: {
        Task01.routeName: (context) => const Task01(),
        AddPerson.routeName: (context) => const AddPerson(),
      },
```
Static route task01.dart
```dart
static const routeName = '/contact';
```
Menambahkan data contact ke Contact
```dart
List<Contact> dataContact = [
    ...data...
    ];
```
Membuat AppBar
```dart
appBar: AppBar(
        title: const Text('Contacts'),
        centerTitle: true,
      ),
```
Menampilkan data Contact
```dart:
ListView.builder(
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
```
Menambah tombol contact baru dengan fungsinya
```dart
floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamed(AddPerson.routeName, arguments: tambahContact);
          },
          child: const Icon(Icons.person_add)),
    );
```
Fungi tambah contact
```dart
void tambahContact(Contact contact) {
    setState(() {
      dataContact.add(contact);
    });
  }
```

### Task 02
Static route add_person.dart
```dart
static const routeName = '/contact/new';
```
Global key 
```dart
final formKey = GlobalKey<FormState>();
```
Variabel untuk menyimpan data
```dart
var dataBaru = {'nama': '', 'nomor': ''};
```
Fungsi _onSubmit
```dart
void _onSubmit() {
    formKey.currentState!.save();
    final contactBaru = Contact(
      nama: dataBaru['nama']!,
      nomor: dataBaru['nomor']!,
    );
    tambahContact(contactBaru);
  }
```
AppBar
```dart
appBar: AppBar(
        title: const Text('Create New Contact'),
      ),
```
Membuat TextFormField didalam Form dengan validator dan onSaved
```dart
TextFormField(
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                textCapitalization: TextCapitalization.words,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  label: Text('Nama'),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Silahkan Tulis Nama Anda";
                  }
                  return null;
                },
                onSaved: (newValue) {
                  if (newValue != null) {
                    dataBaru['nama'] = newValue;
                  }
                },
              ),
```
Membuat tombol untuk submit beserta fungsinya
```dart
Container(
        padding: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {
            if (formKey.currentState != null &&
                formKey.currentState!.validate()) {
              _onSubmit();
              ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(seconds: 1),
                      backgroundColor: Colors.black38,
                      content: Text(
                        'Menyinmpan data contact...',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
              Navigator.of(context).pop();
            }
          },
    `  child: const Text('Simpan'),
        ),
      ),
```

### Output
![out1](/17_Form%20Input%20Button/screenshots/out1.png)
![out2](/17_Form%20Input%20Button/screenshots/out2.png)
![out3](/17_Form%20Input%20Button/screenshots/out3.png)
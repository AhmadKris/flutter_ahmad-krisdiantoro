# (22) Flutter State Management (BLoC)

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44 <br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

## Latihan
### Hapus item pada cart page
1. Menambah method Delete Product pada cart_event.dart
```dart
class DeleteProduct extends CartEvent {
  const DeleteProduct(super.product);
}
```
2. Menambahkan Delete Product pada cart_bloc.dart, disini saya mencoba untuk hapus item tanpa cek id dan ternyata bisa, langsung pada index list *pemahaman saya seperti itu jika salah boleh di sampaikan saja,  Terima Kasih :)*
```dart
on<DeleteProduct>((event, emit) {
  var existingCart = [...state.items];
  existingCart.remove(event.product);
  emit(CartInitial(existingCart));
});
```
3. Menambahkan icon delete beserta fungsinya pada cart_pages.dart
```dart
trailing: InkWell(
  onTap: () {
    context
        .read<CartBloc>()
        .add(DeleteProduct(state.items[index]));
  },
  child: const Icon(Icons.delete),
),
```
### Output 
Menambahkan item ke list cart page <br>
![out1](/22_Flutter%20State%20Management%20(BLoC)/screenshots/chart1.png)<br>
Melihat list item yang sudah di tambahkan <br>
![out2](/22_Flutter%20State%20Management%20(BLoC)/screenshots/chart2.png)<br>
Ketika di pencet icon delete maka item akah terhapus <br>
![out3](/22_Flutter%20State%20Management%20(BLoC)/screenshots/chart3.png)<br>
Ketika di lihat pada halaman awal pada item yang sudah dihapus iconya sudah tidak berwarna ungu lagi.<br>
![out4](/22_Flutter%20State%20Management%20(BLoC)/screenshots/chart4.png)<br>

## Task 
contact event
```dart
abstract class ContactEvent extends Equatable {
  final Contact contact;

  const ContactEvent(this.contact);

  @override
  List<Object> get props => [contact];
}

class TambahContact extends ContactEvent {
  const TambahContact(super.contact);
}
```
contact bloc
```dart
class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(const ContactInitial([])) {
    on<TambahContact>((event, emit) {
      var contactBaru = [...state.items];
      contactBaru.add(event.contact);
      emit(ContactInitial(contactBaru));
    });
  }
}
```
contact state
```dart
abstract class ContactState extends Equatable {
  final List<Contact> items;
  const ContactState(this.items);

  @override
  List<Object> get props => [items];
}

class ContactInitial extends ContactState {
  const ContactInitial(super.items);
}
```
main.dart
```dart
return BlocProvider(
  create: (context) => ContactBloc(),
  child: MaterialApp(
    title: 'Contact',
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(useMaterial3: true),
    home: const Home(),
  ),
);
```
buildTask jika kosong ke EmptyTaskScreen jika ada isi ke ContactList
```dart
Widget buildTaskScreen() {
  return BlocBuilder<ContactBloc, ContactState>(
    builder: (context, state) {
      if (state.items.isNotEmpty) {
        return const ContactList();
      } else {
        return const EmptyScreen();
      }
    },
  );
}
```
pindah halam ke CreateContact
```dart
onPressed: () {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => const AddContact(),
    ),
  );
},
```
globalkey formstate
```dart
 final formKey = GlobalKey<FormState>();
 ```
map data contact 
```dart
var dataBaru = {
    'nama': '',
    'nomor': '',
  };
```
Memanggil BlocBuilder
```dart
    body: BlocBuilder<ContactBloc, ContactState>(
            builder: (context, state) {
                ...code...
            }
        );
```
Tombol Simpan dan fungsinya
```dart
ElevatedButton(
    onPressed: () {
      if (formKey.currentState != null &&
          formKey.currentState!.validate()) {
        formKey.currentState!.save();
        final contactBaru = Contact(
          nama: dataBaru['nama']!,
          nomor: dataBaru['nomor']!,
        );
        context
            .read<ContactBloc>()
            .add(TambahContact(contactBaru));
        Navigator.pop(context);
      }
    },
    child: const Text('Simpan'),
  ),
```
Menampilkan data contact jika tidak kosong
```dart
Widget build(BuildContext context) {
    return BlocBuilder<ContactBloc, ContactState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(state.items[index].nama[0]),
              ),
              title: Text(state.items[index].nama),
              subtitle: Text(state.items[index].nomor),
            );
          },
        );
      },
    );
  }
```

### Output
![ctk1](/22_Flutter%20State%20Management%20(BLoC)/screenshots/contact1.png)
![ctk2](/22_Flutter%20State%20Management%20(BLoC)/screenshots/contact2.png)
![ctk3](/22_Flutter%20State%20Management%20(BLoC)/screenshots/contact3.png)




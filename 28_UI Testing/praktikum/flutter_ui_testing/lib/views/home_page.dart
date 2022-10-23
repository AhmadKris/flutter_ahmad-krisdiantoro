import 'package:flutter/material.dart';
import 'package:flutter_ui_testing/views/history.dart';
import '../models/contact.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/Home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _Task01State();
}

class _Task01State extends State<HomePage> {
  List<Contact> dataContact = [
    Contact(nama: 'Ahmad', nomor: '08573286283'),
    Contact(nama: 'Kris', nomor: '087324602845'),
    Contact(nama: 'Dian', nomor: '081298345834'),
    Contact(nama: 'Toro', nomor: '081384729474'),
    Contact(nama: 'Wann', nomor: '085600986054'),
    Contact(nama: 'Oura', nomor: '083945794456'),
    Contact(nama: 'REKT', nomor: '081239345693'),
    Contact(nama: 'Luminaire', nomor: '082843759734'),
    Contact(nama: 'Donkey', nomor: '082843746546'),
  ];
  void tambahContact(Contact contact) {
    setState(() {
      dataContact.add(contact);
    });
  }

  @override
  Widget build(BuildContext context) {
    final contact = dataContact;
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('/AddPerson', arguments: tambahContact);
            },
            child: const Icon(Icons.person_add),
          ),
          const SizedBox(
            height: 10,
          ),
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
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './add_person.dart';
import 'contact.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contacts'),
          centerTitle: true,
        ),
        body: const ViewList(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddPerson()),
              );
            },
            child: const Icon(Icons.person_add)),
      ),
    );
  }
}

class ViewList extends StatefulWidget {
  const ViewList({super.key});

  @override
  State<ViewList> createState() => _ViewListState();
}

class _ViewListState extends State<ViewList> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

List contact = <Contact>[
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

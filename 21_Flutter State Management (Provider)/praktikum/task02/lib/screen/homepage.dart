import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task02/provider/contact_provider.dart';
import 'add_person.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<Contact> dataContact = [
  //   Contact(nama: 'Ahmad', nomor: '08573286283'),
  //   Contact(nama: 'Kris', nomor: '087324602845'),
  //   Contact(nama: 'Dian', nomor: '081298345834'),
  //   Contact(nama: 'Toro', nomor: '081384729474'),
  //   Contact(nama: 'Wann', nomor: '085600986054'),
  //   Contact(nama: 'Oura', nomor: '083945794456'),
  //   Contact(nama: 'REKT', nomor: '081239345693'),
  //   Contact(nama: 'Luminaire', nomor: '082843759734'),
  //   Contact(nama: 'Donkey', nomor: '082843746546'),
  // ];
  // void tambahContact(Contact contact) {
  //   setState(() {
  //     dataContact.add(contact);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final contact = Provider.of<ContactProvider>(context).contacts;
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
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(contact[index].nomor),
                  Text(contact[index].email),
                ],
              ),
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
                                    .hapus(contact[index].id);
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
              leading: CircleAvatar(
                child: Text(contact[index].nama[0]),
              ),
            );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const AddPerson(),
              ),
            );
          },
          child: const Icon(Icons.person_add)),
    );
  }
}

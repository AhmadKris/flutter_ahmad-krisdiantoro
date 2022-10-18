import 'package:flutter/material.dart';
import 'package:flutter_mvvm/view_models/contact_provider.dart';
import 'package:flutter_mvvm/view/add_contact.dart';
import 'package:flutter_mvvm/view/contact_list.dart';
import 'package:flutter_mvvm/view/empty_contact_screen.dart';
import 'package:provider/provider.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const AddContact()));
        },
        child: const Icon(Icons.add),
      ),
      body: buildContactScreen(),
    );
  }
}

Widget buildContactScreen() {
  return Consumer<ContactProvider>(builder: (context, value, child) {
    if (value.contacts.isNotEmpty) {
      return const ContactList();
    } else {
      return const EmptyContact();
    }
  });
}

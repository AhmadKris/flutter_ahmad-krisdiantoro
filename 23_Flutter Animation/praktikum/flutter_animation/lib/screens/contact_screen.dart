import 'package:flutter/material.dart';
import 'package:flutter_animation/provider/contact_provider.dart';
import 'package:flutter_animation/screens/create_new_contact.dart';
import 'package:provider/provider.dart';
import 'package:page_transition/page_transition.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    final dataContact = Provider.of<ContactProvider>(context).contacts;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.fade,
              child: const CreateContact(),
              duration: const Duration(milliseconds: 400),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        child: ListView.builder(
          itemCount: dataContact.length,
          itemBuilder: ((context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(dataContact[index].name[0]),
              ),
              title: Text(dataContact[index].name),
              subtitle: Text(dataContact[index].number),
              trailing: InkWell(
                  onTap: () {
                    Provider.of<ContactProvider>(context, listen: false)
                        .hapusContact(dataContact[index]);
                  },
                  child: const Icon(Icons.delete)),
            );
          }),
        ),
      ),
    );
  }
}

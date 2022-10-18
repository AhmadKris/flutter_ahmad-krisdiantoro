import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_mvvm/models/contact.dart';
import 'package:flutter_mvvm/view/detail_contact.dart';
import 'package:provider/provider.dart';
import 'package:random_avatar/random_avatar.dart';

import '../view_models/contact_provider.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  final r = Random();
  @override
  Widget build(BuildContext context) {
    final contact = Provider.of<ContactProvider>(context).contacts;
    return Container(
      padding: const EdgeInsets.all(5),
      child: ListView.builder(
        itemCount: contact.length,
        itemBuilder: ((context, index) {
          return ListTile(
            title: Text(contact[index].name),
            subtitle: Text(contact[index].phone),
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
            leading: CircleAvatar(
              child: randomAvatar(r.nextInt(1000).toString()),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailContact(contact[index]),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}

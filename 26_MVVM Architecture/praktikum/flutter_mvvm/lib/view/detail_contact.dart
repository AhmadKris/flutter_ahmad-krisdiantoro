import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_mvvm/models/contact.dart';
import 'package:random_avatar/random_avatar.dart';

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

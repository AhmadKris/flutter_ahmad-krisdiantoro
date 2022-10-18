import 'package:flutter/material.dart';
import 'package:flutter_mvvm/models/contact.dart';
import 'package:provider/provider.dart';

import '../view_models/contact_provider.dart';

class AddContact extends StatefulWidget {
  const AddContact({super.key});

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  final formKey = GlobalKey<FormState>();
  var dataBaru = {
    'nama': '',
    'nomor': '',
    'email': '',
  };

  void _onSubmit() {
    formKey.currentState!.save();
    final contactBaru = Contact(
        name: dataBaru['nama']!,
        phone: dataBaru['nomor']!,
        email: dataBaru['email']!);

    Provider.of<ContactProvider>(context, listen: false)
        .addContact(contactBaru);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Contact'),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
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
                    return "Silahkan Tulis Nama Contact";
                  }
                  return null;
                },
                onSaved: (newValue) {
                  if (newValue != null) {
                    dataBaru['nama'] = newValue;
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  label: Text('Nomor'),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Silahkan Tulis Nomor Contact";
                  }
                  return null;
                },
                onSaved: (newValue) {
                  if (newValue != null) {
                    dataBaru['nomor'] = newValue;
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  label: Text('Email'),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Silahkan Tulis Email Contact";
                  }
                  return null;
                },
                onSaved: (newValue) {
                  if (newValue != null) {
                    dataBaru['email'] = newValue;
                  }
                },
              ),
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
                  child: const Text('Simpan'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_animation/models/contact.dart';
import 'package:flutter_animation/provider/contact_provider.dart';
import 'package:provider/provider.dart';

class CreateContact extends StatefulWidget {
  const CreateContact({super.key});

  @override
  State<CreateContact> createState() => _CreateContactState();
}

class _CreateContactState extends State<CreateContact> {
  final formKey = GlobalKey<FormState>();

  var dataBaru = {
    'nama': '',
    'nomor ': '',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Contact'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
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
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState != null &&
                      formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    final contactBaru = Contact(
                      name: dataBaru['nama']!,
                      number: dataBaru['nomor']!,
                    );
                    Provider.of<ContactProvider>(context, listen: false)
                        .tambahContact(contactBaru);
                    Navigator.of(context).pop();
                  }
                },
                child: const Text('SIMPAN'),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

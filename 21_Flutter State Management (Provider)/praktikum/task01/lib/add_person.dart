import 'package:flutter/material.dart';
import 'package:task01/contact.dart';

class AddPerson extends StatefulWidget {
  static const routeName = '/contact/new';
  const AddPerson({super.key});

  @override
  State<AddPerson> createState() => _AddPersonState();
}

class _AddPersonState extends State<AddPerson> {
  final formKey = GlobalKey<FormState>();
  var dataBaru = {'nama': '', 'nomor': ''};

  late Function(Contact) tambahContact;

  void _onSubmit() {
    formKey.currentState!.save();
    final contactBaru = Contact(
      nama: dataBaru['nama']!,
      nomor: dataBaru['nomor']!,
    );
    tambahContact(contactBaru);
  }

  @override
  Widget build(BuildContext context) {
    tambahContact =
        ModalRoute.of(context)!.settings.arguments as Function(Contact);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Contact'),
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
                    return "Silahkan Tulis Nama Anda";
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
                    return "Silahkan Tulis Nomor Anda";
                  }
                  return null;
                },
                onSaved: (newValue) {
                  if (newValue != null) {
                    dataBaru['nomor'] = newValue;
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

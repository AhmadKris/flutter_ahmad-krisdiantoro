import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_management/bloc/contact_bloc.dart';
import 'package:flutter_state_management/models/contact_model.dart';

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
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Contact'),
        centerTitle: true,
      ),
      body: BlocBuilder<ContactBloc, ContactState>(
        builder: (context, state) {
          return Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(16),
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
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState != null &&
                          formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        final contactBaru = Contact(
                          nama: dataBaru['nama']!,
                          nomor: dataBaru['nomor']!,
                        );
                        context
                            .read<ContactBloc>()
                            .add(TambahContact(contactBaru));
                        Navigator.pop(context);
                      }
                    },
                    child: const Text('Simpan'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

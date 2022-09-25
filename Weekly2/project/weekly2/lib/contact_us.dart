import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewForm extends StatelessWidget {
  const NewForm({
    Key? key,
    required GlobalKey<FormState> formKey,
    required this.firstNameController,
    required this.lastNameController,
    required this.emailController,
    required this.messageController,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController emailController;
  final TextEditingController messageController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Text(
                "Contact Us",
                style: GoogleFonts.robotoCondensed(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: firstNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Nama Depan'),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nama Depan tidak boleh kosong';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: lastNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nama Belakang',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nama Belakang tidak boleh kosong';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email tidak boleh kosong';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  controller: messageController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Pesan Anda',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Silahkan tulis pesan anda';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    firstNameController.text;
                    if (_formKey.currentState!.validate()) {
                      _showDialog(context);
                    }
                  },
                  child: const Text("Submit"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Berhasil Kirim Pesan"),
        content: const Text('Terima Kasih'),
        actions: <Widget>[
          TextButton(
            child: const Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

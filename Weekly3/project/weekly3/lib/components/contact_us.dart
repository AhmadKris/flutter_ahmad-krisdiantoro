import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
import 'package:weekly3/models/task_manager.dart';
import 'package:weekly3/models/task_model.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _NewWidgetState();
}

GlobalKey<FormState> _formKey = GlobalKey<FormState>();
final nameController = TextEditingController();
final emailController = TextEditingController();
final messageController = TextEditingController();

void clear() {
  nameController.clear();
  emailController.clear();
  messageController.clear();
}

class _NewWidgetState extends State<ContactUs> {
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
                  textCapitalization: TextCapitalization.words,
                  textInputAction: TextInputAction.next,
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nama',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nama tidak boleh kosong';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: emailController,
                  textInputAction: TextInputAction.next,
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
                  textCapitalization: TextCapitalization.sentences,
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
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(
                            "Notifikasi",
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Nama : ${nameController.text}"),
                              Text("Email : ${emailController.text}"),
                              Text("Pesan : ${messageController.text}"),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                final items = TaskModel(
                                  id: const Uuid().v4(),
                                  name: nameController.text,
                                  email: emailController.text,
                                  message: messageController.text,
                                );
                                final manager = Provider.of<TaskManager>(
                                    context,
                                    listen: false);
                                manager.addMessage(items);
                                clear();
                                Navigator.pop(context);
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
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

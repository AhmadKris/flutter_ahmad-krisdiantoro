import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplikasi Weekly'),
          centerTitle: true,
        ),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/img1.png",
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.fill,
                ),
                Column(
                  children: [
                    Center(
                      child: Text(
                        'Welcome',
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 36, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "Ini adalah tampilan awal dari aplikasi tugas mingguan."
                                "\nPada aplikasi ini terdapat appbar, welcome , dan contact us            ",
                            style: GoogleFonts.robotoCondensed(fontSize: 18),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 100,
          ),
          Form(
            key: _formKey,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Contact Us",
                      style: GoogleFonts.robotoCondensed(fontSize: 24),
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
          ),
        ],
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Alert!!"),
        content: const Text('Masih gagal'),
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

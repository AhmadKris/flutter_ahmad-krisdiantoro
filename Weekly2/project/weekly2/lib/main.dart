import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weekly2/about_us.dart';
import 'package:weekly2/contact_us.dart';
import './draw.dart';

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
        endDrawer: const Draw(),
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
                                "\nPada aplikasi ini terdapat appbar, welcome , contact us, dan about us             ",
                            style: GoogleFonts.robotoCondensed(fontSize: 20),
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
            height: 150,
          ),
          NewForm(
              formKey: _formKey,
              firstNameController: firstNameController,
              lastNameController: lastNameController,
              emailController: emailController,
              messageController: messageController),
          const AboutUs(),
        ],
      ),
    );
  }
}

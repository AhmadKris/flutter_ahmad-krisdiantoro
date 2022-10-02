import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weekly3/components/about_us.dart';
import 'package:weekly3/components/contact_us.dart';
import 'package:weekly3/components/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weekly App 3'),
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            child: Image(
              image: AssetImage("assets/img/logo.png"),
            ),
          ),
        ),
      ),
      endDrawer: const Draw(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            welcomePage(),
            const ContactUs(),
            const AboutUs(),
          ],
        ),
      ),
    );
  }
}

Widget welcomePage() {
  return Container(
    margin: const EdgeInsets.only(bottom: 20),
    child: Stack(
      children: [
        Image.asset(
          "assets/img/img1.png",
          width: double.infinity,
          height: 300,
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
            Text(
              "Ini adalah tampilan awal dari aplikasi tugas mingguan."
              " Pada aplikasi ini terdapat appbar, welcome, contact us, dan about us",
              style: GoogleFonts.robotoCondensed(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    ),
  );
}

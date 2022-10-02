import 'package:flutter/material.dart';
import 'package:weekly3/screens/login_screen.dart';
import '../screens/data_pesan_screen.dart';

class Draw extends StatelessWidget {
  const Draw({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        width: 100,
        child: Column(
          children: [
            MaterialButton(
              minWidth: 130,
              color: Colors.lightBlue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DataPesanScreen(),
                  ),
                );
              },
              child: const Text('Data Masukan'),
            ),
            MaterialButton(
              minWidth: 130,
              color: Colors.lightBlue,
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('About Us'),
            ),
            MaterialButton(
              minWidth: 130,
              color: Colors.lightBlue,
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Contact Us'),
            ),
            MaterialButton(
              minWidth: 130,
              color: Colors.lightBlue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Login(),
                  ),
                );
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

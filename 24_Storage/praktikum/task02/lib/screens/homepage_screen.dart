import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task02/screens/register_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SharedPreferences loginData;
  String name = '';
  String mail = '';

  void initial() async {
    loginData = await SharedPreferences.getInstance();

    setState(() {
      name = loginData.getString('name').toString();
      mail = loginData.getString('mail').toString();
    });
  }

  @override
  void initState() {
    initial();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              Text(name),
              const SizedBox(
                height: 20,
              ),
              Text(mail),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  loginData.setBool('user', true);
                  loginData.remove('name');
                  loginData.remove('mail');
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Register(),
                      ),
                      (route) => false);
                },
                child: const Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task01/provider/account_provider.dart';
import 'package:task01/screens/register_screen.dart';

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
    // final dataAccount = Provider.of<AccountProvider>(context).accounts;

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
    final dataAccount = Provider.of<AccountProvider>(context).accounts;

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
              Text(dataAccount.elementAt(0).nama.toString()),
              const SizedBox(
                height: 20,
              ),
              Text(dataAccount.elementAt(0).email.toString()),
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

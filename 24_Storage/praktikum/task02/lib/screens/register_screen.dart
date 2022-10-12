import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:task02/screens/homepage_screen.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final formKey = GlobalKey<FormState>();
  final _namaController = TextEditingController();
  final _nomorController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  late SharedPreferences loginData;
  late bool newUser;

  void checkLogin() async {
    loginData = await SharedPreferences.getInstance();
    newUser = loginData.getBool('user') ?? true;

    if (newUser == false) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
          (route) => false);
    }
  }

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  @override
  void dispose() {
    _namaController.dispose();
    _nomorController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                controller: _namaController,
                decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    label: Text('Nama'),
                    hintText: 'Ahmad Krisdiantoro'),
                validator: (value) {
                  if (value == null || value.length < 5) {
                    return 'Silahkan masukkan nama anda';
                  }
                  return null;
                },
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                controller: _nomorController,
                decoration: const InputDecoration(
                    icon: Icon(Icons.phone),
                    label: Text('Nomor'),
                    hintText: '081234567890'),
                validator: (value) {
                  if (value == null || value.length < 10) {
                    return 'Silahkan masukkan nomor yang valid';
                  }
                  return null;
                },
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                decoration: const InputDecoration(
                    icon: Icon(Icons.mail),
                    label: Text('Email'),
                    hintText: 'Example@gmail.com'),
                validator: (value) {
                  if (value == null || value.length < 10) {
                    return 'Silahkan masukkan email yang valid';
                  }
                  return null;
                },
              ),
              TextFormField(
                textInputAction: TextInputAction.done,
                obscureText: true,
                controller: _passwordController,
                decoration: const InputDecoration(
                    icon: Icon(Icons.password),
                    label: Text('Password'),
                    hintText: '*********'),
                validator: (value) {
                  if (value == null || value.length < 8) {
                    return 'Silahkan masukka password minimal 8 karakter';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    String name = _namaController.text;
                    String mail = _emailController.text;

                    loginData.setBool('user', false);
                    loginData.setString('name', name);
                    loginData.setString('mail', mail);
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                        (route) => false);
                  }
                },
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

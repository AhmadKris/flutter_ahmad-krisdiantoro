import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task02/bloc/account_bloc.dart';
import 'package:task02/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AccountBloc(),
      child: MaterialApp(
        theme: ThemeData.dark(useMaterial3: true),
        home: const Register(),
      ),
    );
  }
}

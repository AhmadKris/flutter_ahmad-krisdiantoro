import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_management/bloc/contact_bloc.dart';
import 'package:flutter_state_management/contents/contact_list.dart';
import 'package:flutter_state_management/screens/add_contact.dart';
import 'package:flutter_state_management/screens/empty_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AddContact(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: buildTaskScreen(),
    );
  }
}

Widget buildTaskScreen() {
  return BlocBuilder<ContactBloc, ContactState>(
    builder: (context, state) {
      if (state.items.isNotEmpty) {
        return const ContactList();
      } else {
        return const EmptyScreen();
      }
    },
  );
}

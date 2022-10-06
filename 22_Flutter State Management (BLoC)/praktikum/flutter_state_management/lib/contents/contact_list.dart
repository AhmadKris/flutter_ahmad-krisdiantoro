import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_management/bloc/contact_bloc.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactBloc, ContactState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(state.items[index].nama[0]),
              ),
              title: Text(state.items[index].nama),
              subtitle: Text(state.items[index].nomor),
            );
          },
        );
      },
    );
  }
}

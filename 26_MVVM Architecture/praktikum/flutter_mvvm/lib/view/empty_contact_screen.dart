import 'package:flutter/material.dart';

class EmptyContact extends StatelessWidget {
  const EmptyContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.contact_phone),
          Text('Contact Kosong!'),
        ],
      ),
    );
  }
}

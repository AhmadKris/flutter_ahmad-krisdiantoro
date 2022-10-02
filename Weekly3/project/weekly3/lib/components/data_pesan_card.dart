import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weekly3/models/task_model.dart';

class DataPesanCard extends StatelessWidget {
  final TaskModel item;
  final Function() onPressed;
  const DataPesanCard({required this.item, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nama : ${item.name}",
                style: GoogleFonts.robotoCondensed(fontSize: 16),
              ),
              Text(
                "Email : ${item.email}",
                style: GoogleFonts.robotoCondensed(fontSize: 16),
              ),
              Text(
                "Pesan : ${item.message}",
                style: GoogleFonts.robotoCondensed(fontSize: 16),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: Text(
                    'Yakin ?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoCondensed(fontSize: 32),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('NO'),
                    ),
                    TextButton(
                      onPressed: onPressed,
                      child: const Text('YES'),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.delete_forever_rounded),
          ),
        ],
      ),
    );
  }
}

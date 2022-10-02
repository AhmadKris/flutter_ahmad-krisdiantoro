import 'package:flutter/material.dart';
import 'package:weekly3/components/data_pesan_card.dart';
import 'package:weekly3/models/task_manager.dart';

class DataPesan extends StatelessWidget {
  final TaskManager manager;
  const DataPesan({required this.manager, super.key});

  @override
  Widget build(BuildContext context) {
    final items = manager.taskModels;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.separated(
        itemBuilder: ((context, index) {
          final item = items[index];
          return DataPesanCard(
            key: Key(item.id),
            item: item,
            onPressed: () {
              manager.deleteMessage(index);
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.grey,
                  content: Text('Pesan Dari ${item.name} Berhasil Dihapus.'),
                  duration: const Duration(seconds: 3),
                ),
              );
            },
          );
        }),
        separatorBuilder: (context, index) {
          return const SizedBox(height: 10);
        },
        itemCount: items.length,
      ),
    );
  }
}

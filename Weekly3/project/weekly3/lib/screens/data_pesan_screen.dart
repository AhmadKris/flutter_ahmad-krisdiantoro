import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weekly3/models/task_manager.dart';
import 'package:weekly3/screens/data_pesan_item.dart';
import 'package:weekly3/screens/empty_task.dart';

class DataPesanScreen extends StatelessWidget {
  const DataPesanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Mansukan'),
        centerTitle: true,
      ),
      body: buildTaskScreen(),
    );
  }
}

Widget buildTaskScreen() {
  return Consumer<TaskManager>(
    builder: (context, manager, child) {
      if (manager.taskModels.isNotEmpty) {
        return DataPesan(manager: manager);
      } else {
        return const EmptyTaskScreen();
      }
    },
  );
}

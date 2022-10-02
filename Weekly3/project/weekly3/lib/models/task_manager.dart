import 'package:flutter/material.dart';
import 'package:weekly3/models/task_model.dart';

class TaskManager extends ChangeNotifier {
  final _taskModels = <TaskModel>[];
  List<TaskModel> get taskModels => List.unmodifiable(_taskModels);

  void deleteMessage(int index) {
    _taskModels.removeAt(index);
    notifyListeners();
  }

  void addMessage(TaskModel message) {
    _taskModels.add(message);
    notifyListeners();
  }
}

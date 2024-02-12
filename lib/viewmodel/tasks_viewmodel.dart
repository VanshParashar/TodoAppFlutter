import 'package:flutter/material.dart';

import '../model/task_model.dart';

class TaskViewModal extends ChangeNotifier {
  List<Task> tasks = [];

  String? taskname;
  final dateController = TextEditingController();
  final timeController = TextEditingController();

  bool get isvalid => taskname != null && dateController.text !="" && timeController.text != "";

  setTaskName(String? value){
    taskname = value;
    notifyListeners();
  }

  setDate(DateTime? dateTime){}

  setTime(TimeOfDay? timeOfDay){

  }

  addTask(){
    final task = Task(taskname!, dateController.text, timeController.text);
    tasks.add(task);
    notifyListeners();
  }
}

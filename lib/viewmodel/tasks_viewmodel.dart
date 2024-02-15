import 'dart:math';

import 'package:flutter/material.dart';

import '../model/task_model.dart';

class TaskViewModal extends ChangeNotifier {
  List<Task> tasks = [];

  String? taskname;
  final dateController = TextEditingController();
  final timeController = TextEditingController();

  bool get isvalid =>
      taskname != null &&
      dateController.text != "" &&
      timeController.text != "";

  setTaskName(String? value) {
    taskname = value;
    notifyListeners();
  }

  setDate(DateTime? dateTime) {
    if (dateTime == null) {
      return;
    }
    DateTime currentDate = DateTime.now();
    DateTime now =
        DateTime(currentDate.year, currentDate.month, currentDate.day);
    int diff = dateTime.difference(now).inDays;

    if(diff == 0){
      dateController.text = "Today";
    }else if(diff == 1){
      dateController.text = "Tommorrow";
    }else {
      dateController.text = "${dateTime.day}-${dateTime.month}-${dateTime.year}";
    }
    notifyListeners();
  }

  setTime(TimeOfDay? time) {

    if(time == null){
      return;
    }

    if(time.hour == 0){
      timeController.text = "12:${time.minute} AM";
    }else if(time.hour < 12){
      timeController.text = "${time.hour}:${time.minute}";
    }else if(time.hashCode == 12){
      timeController.text = "${time.hour}:${time.minute} PM";
    }else {
      timeController.text = "${time.hour - 12}:${time.minute} PM";
    }
    print(timeController.text);
    notifyListeners();
  }

  addTask() {
    if (!isvalid) {
      return SnackBar(content: Text("Empty data"));
    }

    final task = Task(taskname!, dateController.text, timeController.text);
    tasks.add(task);
    timeController.clear();
    dateController.clear();
    print(tasks.length.toString());
    notifyListeners();
  }
}

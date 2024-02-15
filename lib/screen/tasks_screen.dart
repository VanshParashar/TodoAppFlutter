import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/screen/dialog.dart';
import 'package:todo/viewmodel/tasks_viewmodel.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
            child: Text(
          'Todo List',
          style: TextStyle(
            color: Colors.white,
          ),
        )),
      ),
      body: Consumer<TaskViewModal>(
        builder: (context,taskProvider,_) {
          return ListView.separated(
              itemBuilder: (context, index) {
                final tasks = taskProvider.tasks[index];
                return  ListTile(
                  title: Text(
                    tasks.taskName,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  subtitle: Text(
                    "${tasks.date} ${tasks.time}",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox.shrink();
              },
              itemCount: taskProvider.tasks.length);
        }
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 40,
        ),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  backgroundColor: Colors.lightBlueAccent,
                  child: CustomDialog()
                );
              });
        },
      ),
    );
  }
}

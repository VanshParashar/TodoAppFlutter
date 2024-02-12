import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/screen/dialog.dart';

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
      body: ListView.separated(
          itemBuilder: (context, index) {
            return const ListTile(
              title: Text(
                "Doctor Chekup",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              subtitle: Text(
                "Tommorrow 3 pm",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox.shrink();
          },
          itemCount: 4),
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

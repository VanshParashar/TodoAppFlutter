import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.5,
      width: MediaQuery.sizeOf(context).width * 0.8,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.05,
            vertical: MediaQuery.sizeOf(context).height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "New Task",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'What has to be done?',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: const TextField(
                decoration: InputDecoration(hintText: "Enter a Task"),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Due Date',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: TextField(
                readOnly: true,
                decoration: InputDecoration(
                    suffixIcon: InkWell(
                      child: Icon(Icons.calendar_month),
                      onTap: () {},
                    ),
                    hintText: "Pick a date"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: TextField(
                readOnly: true,
                decoration: InputDecoration(
                    suffixIcon: InkWell(
                      child: Icon(Icons.watch_later_outlined),
                      onTap: () {},
                    ),
                    hintText: "Pick a time"),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {},
                  child: Text(
                    'Create',
                    style: TextStyle(color: Colors.blue),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

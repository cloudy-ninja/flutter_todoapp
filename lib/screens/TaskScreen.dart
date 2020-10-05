import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding: EdgeInsets.only(top: 60, right: 30, bottom: 30, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              child: Icon(
                Icons.list,
                size: 30.0,
                color: Colors.lightBlueAccent,
              ),
              backgroundColor: Colors.white,
              radius: 30.00,
            ),
            SizedBox(height: 10),
            Text(
              'Todo app',
              style: TextStyle(fontSize: 60, color: Colors.white),
            ),
            Text(
              '12 Tasks',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(height: 30),
            Expanded(
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
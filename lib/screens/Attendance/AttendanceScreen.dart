import 'package:flutter/material.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Attendance"),),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Attendace Screen")
        ],
      ),
    );
  }
}
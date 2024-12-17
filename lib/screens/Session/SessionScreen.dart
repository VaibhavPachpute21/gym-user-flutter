import 'package:flutter/material.dart';
import 'package:gym_app/common/CommonWidgets.dart';

class Sessionscreen extends StatefulWidget {
  const Sessionscreen({super.key});

  @override
  State<Sessionscreen> createState() => _SessionscreenState();
}

class _SessionscreenState extends State<Sessionscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: SecondaryAppBar(title: "Session")),
      body: Center(
        child: Text("Sessions"),
      ),
    );
  }
}

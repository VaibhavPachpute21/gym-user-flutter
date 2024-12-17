import 'package:flutter/material.dart';
import 'package:gym_app/common/CommonWidgets.dart';

class TrainerScreen extends StatefulWidget {
  const TrainerScreen({super.key});

  @override
  State<TrainerScreen> createState() => _TrainerScreenState();
}

class _TrainerScreenState extends State<TrainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: SecondaryAppBar(title: "Trainer")),
      body: Center(child: Text("Trainers"),),
    );
  }
}
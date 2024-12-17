import 'package:flutter/material.dart';

class ProgressScreen extends StatefulWidget {
  const ProgressScreen({super.key});

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double halfWidth = screenWidth * 0.45;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text("WORKOUT & DIET SCHEDULE"),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: halfWidth,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5,
                            offset: const Offset(2, 2),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(2),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: const Text("Workout",),
                        leading: const Icon(Icons.directions_run),
                        subtitle: const Text("Workouts - 11"),
                        onTap: () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    width: halfWidth,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5,
                            offset: const Offset(2, 2),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(2),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: const Text("Nutrition",),
                        leading: SizedBox(
                          width: 5,
                          child: Icon(Icons.fastfood)),
                        subtitle: const Text("Diets - 11"),
                        onTap: () {},
                      ),
                    ),
                  ),
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

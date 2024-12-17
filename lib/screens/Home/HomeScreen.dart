import 'package:flutter/material.dart';
import 'package:gym_app/screens/Attendance/AttendanceScreen.dart';
import 'package:gym_app/screens/Invoice/InvoiceScreen.dart';
import 'package:gym_app/screens/Session/SessionScreen.dart';
import 'package:gym_app/screens/Trainer/TrainerScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 2,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "My Fintness Scrore",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "3.0",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 0,
              color: Colors.blue,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  onTap: () {
                    print("Clicked");
                  },
                  enableFeedback: false,
                  leading: const Icon(Icons.home),
                  title: const Text(
                    "Select Company",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 0,
              color: Colors.greenAccent,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  onTap: () {
                    print("Check Progress");
                  },
                  enableFeedback: false,
                  leading: const Icon(Icons.show_chart),
                  title: const Text(
                    "Check Your Progress",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 0,
              color: Colors.orangeAccent,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  onTap: () {
                    print("Clicked");
                  },
                  enableFeedback: false,
                  leading: const Icon(Icons.fastfood),
                  title: const Text(
                    "Check Your Diet",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.all(5),
                child: Text("My Subscriptions",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.start)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: _gymCard(context),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: _gymCard(context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _gymCard(BuildContext context) {
  return Card(
    color: Colors.white,
    elevation: 3,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5))),
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.sports_gymnastics, size: 24),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Gym Title",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text("Pune"),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text("Total Members: 30"),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _iconButtonWithSubtitle(
                icon: Icons.more_horiz_outlined,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AttendanceScreen()));
                },
                subtitle: "Attendance",
                color: Colors.purple,
              ),
              _iconButtonWithSubtitle(
                icon: Icons.inventory_2_rounded,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Invoicescreen()));
                },
                subtitle: "Invoice",
                color: Colors.blue,
              ),
              _iconButtonWithSubtitle(
                icon: Icons.access_time,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Sessionscreen()));
                },
                subtitle: "Session",
                color: Colors.red,
              ),
              _iconButtonWithSubtitle(
                icon: Icons.horizontal_distribute_rounded,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TrainerScreen()));
                },
                subtitle: "Trainer",
                color: Colors.blue,
              ),
              _iconButtonWithSubtitle(
                icon: Icons.more_horiz_outlined,
                onPressed: () {
                  print("Settings");
                },
                subtitle: "More",
                color: Colors.amber,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget _iconButtonWithSubtitle({icon, onPressed, subtitle, color}) {
  return GestureDetector(
    onTap: onPressed,
    child: Column(
      children: [
        Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: color.shade50,
                borderRadius: const BorderRadius.all(Radius.circular(50))),
            child: Icon(
              icon,
              size: 20,
              color: color,
            )),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w300,
          ),
        )
      ],
    ),
  );
}

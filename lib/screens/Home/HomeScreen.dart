import 'package:flutter/material.dart';
import 'package:gym_app/screens/Accounts/AccountsScreen.dart';
import 'package:gym_app/screens/Attendance/AttendanceScreen.dart';
import 'package:gym_app/screens/Batch/BatchScreen.dart';
import 'package:gym_app/screens/Enquiry/EnquiryScreen.dart';
import 'package:gym_app/screens/Member/MemberScreen.dart';

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
              elevation: 5,
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
              elevation: 5,
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
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Text("My Subscriptions",style: TextStyle(fontSize: 18,),textAlign: TextAlign.start)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: _gymCard(),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: _gymCard(),
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

Widget _gymCard() {
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
                  print("Attendance");
                },
                subtitle: "Attendance",
                color: Colors.purple,
              ),
              _iconButtonWithSubtitle(
                icon: Icons.inventory_2_rounded,
                onPressed: () {
                  print("Invoice");
                },
                subtitle: "Invoice",
                color: Colors.blue,
              ),
              _iconButtonWithSubtitle(
                icon: Icons.access_time,
                onPressed: () {
                  print("Session");
                },
                subtitle: "Session",
                color: Colors.red,
              ),
              _iconButtonWithSubtitle(
                icon: Icons.horizontal_distribute_rounded,
                onPressed: () {
                  print("Trainer");
                },
                subtitle: "Trainer",
                color: Colors.blue,
              ),
              _iconButtonWithSubtitle(
                icon: Icons.more_horiz_outlined,
                onPressed: () {
                  print("Settings");
                },
                subtitle: "Settings",
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

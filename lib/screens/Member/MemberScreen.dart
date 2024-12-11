import 'package:flutter/material.dart';
import 'package:gym_app/common/CommonWidgets.dart';
import 'package:gym_app/screens/Member/AddMemberScreen.dart';

class MemberScreen extends StatefulWidget {
  const MemberScreen({super.key});

  @override
  State<MemberScreen> createState() => _MemberScreenState();
}

class _MemberScreenState extends State<MemberScreen> {
  final List<Map<String, dynamic>> members = [
    {
      "memberName": "John Doe",
      "phoneNo": "9876543210",
      "gender": "Male",
      "regnDate": "2023-01-15",
      "lastPlanExpiry": "2024-01-14",
      "status": "Active",
      "emailId": "john.doe@example.com",
      "dob": "1990-05-21",
      "referralPoints": "10",
      "lastRemark": "Regular member",
      "expectedDate": "2024-02-01",
      "userApproach": "Positive",
      "assignedTo": "Staff 1",
      "createdBy": "Admin",
      "updatedBy": "Staff 2",
      "nextFeedbackDate": "2023-12-15",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: SecondaryAppBar(title: "Member")),
      body: _membersListScreen(members),
      floatingActionButton: FloatingActionButton(
          tooltip: "Add Member",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddMemberScreen(),
              ),
            );
          },
          backgroundColor: Colors.orange,
          elevation: 0,
          child: Icon(
            Icons.add,
            color: Colors.white,
          )),
    );
  }
}

Widget _membersListScreen(List<Map<String, dynamic>> data) {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: data.map((member) {
        return MemberCard(
          memberName: member["memberName"]!,
          phoneNo: member["phoneNo"]!,
          gender: member["gender"]!,
          regnDate: member["regnDate"]!,
          lastPlanExpiry: member["lastPlanExpiry"]!,
          status: member["status"]!,
          emailId: member["emailId"]!,
          dob: member["dob"]!,
          referralPoints: member["referralPoints"]!,
          lastRemark: member["lastRemark"]!,
          expectedDate: member["expectedDate"]!,
          userApproach: member["userApproach"]!,
          assignedTo: member["assignedTo"]!,
          createdBy: member["createdBy"]!,
          updatedBy: member["updatedBy"]!,
          nextFeedbackDate: member["nextFeedbackDate"]!,
        );
      }).toList(),
    ),
  );
}

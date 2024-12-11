import 'package:flutter/material.dart';
import 'package:gym_app/common/CommonWidgets.dart';
import 'package:gym_app/screens/Enquiry/AddEnquiryScreen.dart';

class EnquiryScreen extends StatefulWidget {
  const EnquiryScreen({super.key});

  @override
  State<EnquiryScreen> createState() => _EnquiryScreenState();
}

class _EnquiryScreenState extends State<EnquiryScreen> {
  final List<Map<String, String>> _enquiries = [
    {
      "name": "John Doe",
      "email": "john.doe@example.com",
      "phone": "9876543210",
      "dob": "1990-01-01",
      "gender": "Male",
      "reference": "Walk-in",
      "address": "123, Main Street, New York"
    },
    {
      "name": "John Doe",
      "email": "john.doe@example.com",
      "phone": "9876543210",
      "dob": "1990-01-01",
      "gender": "Male",
      "reference": "Walk-in",
      "address": "123, Main Street, New York"
    },
    {
      "name": "John Doe",
      "email": "john.doe@example.com",
      "phone": "9876543210",
      "dob": "1990-01-01",
      "gender": "Male",
      "reference": "Walk-in",
      "address": "123, Main Street, New York"
    },
    {
      "name": "John Doe",
      "email": "john.doe@example.com",
      "phone": "9876543210",
      "dob": "1990-01-01",
      "gender": "Male",
      "reference": "Walk-in",
      "address": "123, Main Street, New York"
    },
  ];
  
    final List<Map<String, String>> _trials = [
    {
      "name": "John Doe",
      "email": "john.doe@example.com",
      "phone": "9876543210",
      "dob": "1990-01-01",
      "gender": "Male",
      "reference": "Walk-in",
      "address": "123, Main Street, New York"
    },
    {
      "name": "John Doe",
      "email": "john.doe@example.com",
      "phone": "9876543210",
      "dob": "1990-01-01",
      "gender": "Male",
      "reference": "Walk-in",
      "address": "123, Main Street, New York"
    },
  ];
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Enquiry",
            style: TextStyle(color: Colors.white),
          ),
          bottom: TabBar(tabs: [
            Tab(
              child: Text("Enquiry",style: TextStyle(color: Colors.white),),
              
            ),
            Tab(
              child: Text("Trial",style: TextStyle(color: Colors.white),),
            )
          ]),
          backgroundColor: Colors.orange,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: TabBarView(
          children: [
            _buildTabContent(_enquiries),
            _buildTabContent(_trials),
          ]),
        floatingActionButton: FloatingActionButton(
            tooltip: "Add Enquiry",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddEnquiryScreen(),
                ),
              );
            },
            backgroundColor: Colors.orange,
            elevation: 0,
            child: Icon(
              Icons.add,
              color: Colors.white,
            )),
      ),
    );
  }
}

Widget _buildTabContent(List<Map<String, String>> data) {
  return SingleChildScrollView(
    child: Column(
      children: data.map((enquiry) {
        return EnquiryCard(
          name: enquiry['name']!,
          email: enquiry['email']!,
          phone: enquiry['phone']!,
          dob: enquiry['dob']!,
          gender: enquiry['gender']!,
          reference: enquiry['reference']!,
          address: enquiry['address']!,
        );
      }).toList(),
    ),
  );
}

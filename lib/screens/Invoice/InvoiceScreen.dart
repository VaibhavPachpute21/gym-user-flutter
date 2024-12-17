import 'package:flutter/material.dart';
import 'package:gym_app/common/CommonWidgets.dart';

class Invoicescreen extends StatefulWidget {
  const Invoicescreen({super.key});

  @override
  State<Invoicescreen> createState() => _InvoicescreenState();
}

class _InvoicescreenState extends State<Invoicescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: SecondaryAppBar(title: "Invoice")),
      body: Center(child: Text("Download Invoice"),),
    );
  }
}
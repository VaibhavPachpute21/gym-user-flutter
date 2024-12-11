import 'package:flutter/material.dart';
import 'package:gym_app/common/CommonWidgets.dart';
import 'package:intl/intl.dart';

class AddEnquiryScreen extends StatefulWidget {
  const AddEnquiryScreen({super.key});

  @override
  State<AddEnquiryScreen> createState() => _AddEnquiryScreenState();
}

class _AddEnquiryScreenState extends State<AddEnquiryScreen> {
  final Map<String, dynamic> formState = {
    'name': '',
    'email': '',
    'mobile': '',
    'dob': '',
    'gender': '',
    'reference': '',
    'assignedTo': '',
    'plan': '',
    'packageType': '',
    'price': '',
    'negotiatedAmount': '',
    'address': '',
    'locality': '',
    'state': '',
    'country': '',
    'pincode': '',
    'userApproach': '',
    'trialStartDate': '',
    'trialEndDate': '',
    'expJoinDate': '',
    'note': '',
  };
  final genderOptions = ['Male', 'Female'];
  final referenceOptions = ['Promotion', 'Walk-in', 'Other'];
  final assignedToOptions = ['Staff 1', 'Staff 2', 'Staff 3'];
  final planOptions = ['Yoga', 'Gym'];
  final packageOptions = ['Package 1', 'Package 2'];
  final countryOptions = ['India', 'USA', 'Nepal'];
  final stateOptions = [
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jharkhand',
    'Karnataka',
    'Madhya Pradesh',
    'Maharashtra',
    'Punjab',
    'Rajasthan',
    'Tamil Nadu',
    'Uttar Pradesh',
    'Uttarakhand',
    'West Bengal'
  ];
  final userApproachOptions = ['Hot', 'Warm', 'Free Trial', 'Expected'];

  Future<void> _selectDate(String field) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        formState[field] = DateFormat('yyyy-MM-dd').format(pickedDate);
      });
    }
  }

  void _handleInputChange(String field, dynamic value) {
    setState(() {
      formState[field] = value;
    });
  }

  void _handleSave() {
    print(formState);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: SecondaryAppBar(
            title: 'Add Enquiry',
          )),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              const Text(
                "Personal Details",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: const InputDecoration(labelText: "Name",border: OutlineInputBorder()),
                onChanged: (value) => _handleInputChange('name', value),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: const InputDecoration(labelText: "Email",border: OutlineInputBorder()),
                onChanged: (value) => _handleInputChange('email', value),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: const InputDecoration(labelText: "Phone",border: OutlineInputBorder()),
                keyboardType: TextInputType.phone,
                maxLength: 10,
                onChanged: (value) => _handleInputChange('mobile', value),
              ),
              const SizedBox(height: 10),

              GestureDetector(
                onTap: () => _selectDate('dob'),
                child: AbsorbPointer(
                  child: TextField(
                    decoration:
                        const InputDecoration(labelText: "Date of Birth",border: OutlineInputBorder()),
                    controller: TextEditingController(text: formState['dob']),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField(
                decoration: const InputDecoration(labelText: "Gender",border: OutlineInputBorder()),
                items: genderOptions
                    .map((item) =>
                        DropdownMenuItem(value: item, child: Text(item)))
                    .toList(),
                onChanged: (value) => _handleInputChange('gender', value),
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField(
                decoration: const InputDecoration(labelText: "Reference",border: OutlineInputBorder()),
                items: referenceOptions
                    .map((item) =>
                        DropdownMenuItem(value: item, child: Text(item)))
                    .toList(),
                onChanged: (value) => _handleInputChange('reference', value),
              ),
              const SizedBox(height: 20),
              const Text(
                "Plan Details",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField(
                decoration: const InputDecoration(labelText: "Select Category",border: OutlineInputBorder()),
                items: planOptions
                    .map((item) =>
                        DropdownMenuItem(value: item, child: Text(item)))
                    .toList(),
                onChanged: (value) => _handleInputChange('plan', value),
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField(
                decoration: const InputDecoration(
                    labelText: "Select Package", border: OutlineInputBorder()),
                items: packageOptions
                    .map((item) =>
                        DropdownMenuItem(value: item, child: Text(item)))
                    .toList(),
                onChanged: (value) => _handleInputChange('packageType', value),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: const InputDecoration(labelText: "Price",border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
                onChanged: (value) => _handleInputChange('price', value),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration:
                    const InputDecoration(labelText: "Negotiated Amount",border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
                onChanged: (value) =>
                    _handleInputChange('negotiatedAmount', value),
              ),
              const SizedBox(height: 20),
              const Text(
                "Address Details",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: const InputDecoration(labelText: "Address",border: OutlineInputBorder(),),
                onChanged: (value) => _handleInputChange('address', value),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: const InputDecoration(labelText: "Locality",border: OutlineInputBorder()),
                onChanged: (value) => _handleInputChange('locality', value),
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField(
                decoration: const InputDecoration(labelText: "Country",border: OutlineInputBorder()),
                items: countryOptions
                    .map((item) =>
                        DropdownMenuItem(value: item, child: Text(item)))
                    .toList(),
                onChanged: (value) => _handleInputChange('country', value),
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField(
                decoration: const InputDecoration(labelText: "State",border: OutlineInputBorder()),
                items: stateOptions
                    .map((item) =>
                        DropdownMenuItem(value: item, child: Text(item)))
                    .toList(),
                onChanged: (value) => _handleInputChange('state', value),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: const InputDecoration(labelText: "Pin code",border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
                onChanged: (value) => _handleInputChange('pincode', value),
              ),
              const SizedBox(height: 20),
              CustomButton(text: "Add Enquiry", onClick: _handleSave),
            ],
          ),
        ),
      ),
    );
  }
}

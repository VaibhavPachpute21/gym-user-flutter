import 'package:flutter/material.dart';

class SecondaryAppBar extends StatefulWidget {
  const SecondaryAppBar({super.key, required this.title});
  final String title;

  @override
  State<SecondaryAppBar> createState() => _SecondaryAppBarState();
}

class _SecondaryAppBarState extends State<SecondaryAppBar> {

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(
         widget.title,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      );
  }
}


class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onClick;
  final Color color;
  final Color textColor;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onClick,
    this.color = Colors.orange,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: Size(200, 50),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onClick,
      child: Text(
        text,
        style: TextStyle(fontSize: 16, color: textColor),
      ),
    );
  }
}

class EnquiryCard extends StatelessWidget {
  final String name;
  final String email;
  final String phone;
  final String dob;
  final String gender;
  final String reference;
  final String address;

  const EnquiryCard({
    Key? key,
    required this.name,
    required this.email,
    required this.phone,
    required this.dob,
    required this.gender,
    required this.reference,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name: $name",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              "Email: $email",
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 4),
            Text(
              "Phone: $phone",
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 4),
            Text(
              "Date of Birth: $dob",
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 4),
            Text(
              "Gender: $gender",
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 4),
            Text(
              "Reference: $reference",
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 4),
            Text(
              "Address: $address",
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}


class MemberCard extends StatelessWidget {
  final String memberName;
  final String phoneNo;
  final String gender;
  final String regnDate;
  final String lastPlanExpiry;
  final String status;
  final String emailId;
  final String dob;
  final String referralPoints;
  final String lastRemark;
  final String expectedDate;
  final String userApproach;
  final String assignedTo;
  final String createdBy;
  final String updatedBy;
  final String nextFeedbackDate;

  const MemberCard({
    Key? key,
    required this.memberName,
    required this.phoneNo,
    required this.gender,
    required this.regnDate,
    required this.lastPlanExpiry,
    required this.status,
    required this.emailId,
    required this.dob,
    required this.referralPoints,
    required this.lastRemark,
    required this.expectedDate,
    required this.userApproach,
    required this.assignedTo,
    required this.createdBy,
    required this.updatedBy,
    required this.nextFeedbackDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$memberName",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                Text(
                  status,
                  style: TextStyle(
                    color: status.toLowerCase() == "active"
                        ? Colors.green
                        : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Divider(),

            // Basic Info
            Row(
              children: [
                Expanded(child: _buildField("Phone", phoneNo)),
              ],
            ),
             _buildField("Email", emailId),
            Row(
              children: [
                Expanded(child: _buildField("Gender", gender)),
                Expanded(child: _buildField("DOB", dob)),
              ],
            ),
            

            // Plan Info
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(child: _buildField("Regn Date", regnDate)),
              ],
            ),
            Row(
              children: [
                Expanded(child: _buildField("Plan Expiry", lastPlanExpiry)),
              ],
            ),
            Row(
              children: [
                Expanded(child: _buildField("Expected Join", expectedDate)),
              ],
            ),
            const SizedBox(height: 10),
            _buildField("Last Remark", lastRemark),
            Row(
              children: [
                Expanded(child: _buildField("Assigned To", assignedTo)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper method for fields
  Widget _buildField(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$label: ",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(color: Colors.grey),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

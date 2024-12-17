import 'package:flutter/material.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: CircleAvatar(
                    radius: 30,
                    child: Icon(Icons.person, size: 30),
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('AVINASH HUBALE',style:TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text( '9370481861',style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child:
                      const Text('Edit', style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text('PERSONAL',
                style: TextStyle(fontWeight: FontWeight.bold)),
            ListTile(
              leading: const Icon(Icons.assignment),
              title: const Text('Mark Attendance'),
              onTap: () {},
            ),
            const SizedBox(height: 16),
            const Text('GENERAL',
                style: TextStyle(fontWeight: FontWeight.bold)),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Rate Us'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.feedback),
              title: const Text('Feedback'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text('Privacy Policy'),
              onTap: () => {},
            ),
            const SizedBox(height: 16),
            const Text('FOLLOW US',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.facebook, color: Colors.blueAccent,size: 40,),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.facebook, color: Colors.blueAccent,size: 40,),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.facebook, color: Colors.blueAccent,size: 40,),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.facebook, color: Colors.blueAccent,size: 40,),
                  onPressed: () {},
                ),
              ],
            ),
            const Spacer(),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Log Out', style: TextStyle(color: Colors.red)),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

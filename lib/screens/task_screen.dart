import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Task", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF16ACE4),
        // actions: [
        //   Padding(
        //     padding: EdgeInsets.only(left: 8.0),
        //     child: Image.asset('assets/images/logo_icckh.png', height: 40),
        //   ),
        // ],
      ), // Set your desired background color here
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('New Ticket'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to New Ticket screen
            },
          ),
          ListTile(
            leading: Icon(Icons.track_changes),
            title: Text('Tracking Ticket'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to Tracking Ticket screen
            },
          ),
          // Add more ListTile widgets as needed
        ],
      ),
    );
  }
}

import 'package:eticket/screens/add_screen.dart';
import 'package:flutter/material.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Ticket", style: TextStyle(color: Colors.white)),
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddPage(),
                ), // Replace TicketScreen() with your actual screen
              );
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

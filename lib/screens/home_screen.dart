import 'package:eticket/screens/add_screen.dart';
import 'package:eticket/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        // title: RichText(
        //   text: TextSpan(
        //     children: [
        //       TextSpan(
        //         text: "Welcome, ",
        //         style: TextStyle(color: Colors.black, fontSize: 20),
        //       ),
        //       TextSpan(
        //         text: "ICCKH B1",
        //         style: TextStyle(
        //           color: Colors.blue,
        //           fontSize: 15,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: 8.0), // Adjust padding if needed
          child: Image.asset('assets/images/logo_icckh.png', height: 50),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _showNotificationDialog(context);
            },
            icon: const Icon(Icons.notifications),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              icon: const Icon(Icons.person),
            ),
          ),
        ],

        // title: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Image.asset('assets/images/logo.png', height: 40),
        //     Row(
        //       children: [
        //         IconButton(
        //           icon: const Icon(Icons.notifications),
        //           onPressed: () {
        //             // Notification action
        //           },
        //         ),
        //         IconButton(
        //           icon: const Icon(Icons.person),
        //           onPressed: () {
        //             // User profile action
        //           },
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
      ), // Set your desired background color here
      body: const Center(child: Text('Hello Help Content')),
    );
  }

  void _showNotificationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Notifications"),
          content: Container(
            constraints: BoxConstraints(maxHeight: 400),
            width: double.maxFinite,
            child: ListView(
              shrinkWrap: true,
              children: [
                _buildNotificationItem(
                  "New Message",
                  "You have a new message from John",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddPage()),
                    );
                  },
                ),
                _buildNotificationItem(
                  "Meeting Reminder",
                  "Don't forget the team meeting at 3 PM",
                  onTap: () {},
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Close"),
            ),
          ],
        );
      },
    );
  }

  Widget _buildNotificationItem(
    String title,
    String subtitle, {
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/profile.png'),
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle),
      onTap: onTap,
    );
  }
}

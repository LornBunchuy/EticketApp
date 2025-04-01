import 'package:eticket/screens/add_screen.dart';
import 'package:flutter/material.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

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
          _buildTile(
            title: 'New Ticket',
            icon: Icons.add_circle_outline,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddPage()),
              );
            },
          ),
          _buildTile(
            title: 'Ticket Approval',
            icon: Icons.fact_check,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddPage()),
              );
            },
          ),
          _buildTile(
            title: 'Tracking Ticket',
            icon: Icons.playlist_add_check,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddPage()),
              );
            },
          ),
          _buildTile(
            title: 'Report Ticket',
            icon: Icons.trending_up,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddPage()),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddPage()),
          );
        },
        backgroundColor: Color(0xFF16ACE4),
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildTile({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      trailing: Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}

import 'package:eticket/screens/home_screen.dart';
import 'package:eticket/screens/login_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color(0xFF16ACE4),
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: Colors.white), // Corrected
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            ); // Navigates back to the previous page
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 50), // Space from the top
          // Profile Image - Centered at the Top
          Center(
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage(
                'assets/images/profile.png',
              ), // Corrected
            ),
          ),
          SizedBox(height: 15),
          Text(
            "John Doe",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(
            "johndoe@gmail.com",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: 180,
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "Logged out successfully",
                      style: TextStyle(color: Colors.white), // Text color
                    ),
                    backgroundColor: Colors.green, // Green background
                    behavior:
                        SnackBarBehavior.floating, // Optional: Makes it float
                    duration: Duration(
                      seconds: 2,
                    ), // Optional: Controls duration
                  ),
                );
              },
              icon: Icon(Icons.logout),
              label: Text("Logout"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 50), // Space from the bottom
        ],
      ),
    );
  }
}

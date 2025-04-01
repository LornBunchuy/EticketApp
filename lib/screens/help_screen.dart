import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF16ACE4),
      ), // Set your desired background color here
      body: const Center(child: Text('Hello Help Content')),
    );
  }
}

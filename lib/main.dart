import 'package:eticket/screens/information_screen.dart';
import 'package:eticket/screens/login_screen.dart';
import 'package:eticket/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:eticket/screens/main_screen.dart';
import 'package:eticket/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const InformationScreen(),
    );
  }
}

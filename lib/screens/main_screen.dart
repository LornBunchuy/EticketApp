import 'package:flutter/material.dart';
import 'package:eticket/screens/home_screen.dart';
import 'package:eticket/screens/ticket_screen.dart';
import 'package:eticket/screens/task_screen.dart';
import 'package:eticket/screens/help_screen.dart';
import 'package:eticket/screens/add_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const TicketScreen(),
    const TaskScreen(),
    const HelpScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 50.0,
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        selectedItemColor: const Color(
          0xFF16ACE4,
        ), // Color for the selected item
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_number),
            label: 'Ticket',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Task'),
          BottomNavigationBarItem(icon: Icon(Icons.help), label: 'Help'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

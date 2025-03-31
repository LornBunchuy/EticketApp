import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar Example"),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.blue, // Line under the selected tab
            indicatorWeight: 3.0, // Thickness of the indicator line
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Home Screen")),
            Center(child: Text("Settings Screen")),
          ],
        ),
      ),
    );
  }
}

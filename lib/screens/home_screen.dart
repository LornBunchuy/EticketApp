import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Welcome, ",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              TextSpan(
                text: "ICCKH B1",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: 8.0), // Adjust padding if needed
          child: Image.asset('assets/images/logo_icckh.png', height: 50),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
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
}

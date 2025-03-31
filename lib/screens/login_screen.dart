import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 80),
            Image.asset(
              'assets/images/logo.png',
              height: 179,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome ICCKH',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF16ACE4),
              ),
            ),
            SizedBox(height: 50),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person, color: Color(0xFF16ACE4)),
                labelText: 'User Id',
                labelStyle: TextStyle(color: Color(0xFF16ACE4)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF16ACE4)),
                  borderRadius: BorderRadius.all(Radius.circular(13.5)),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF16ACE4)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF16ACE4)),
                  borderRadius: BorderRadius.all(Radius.circular(13.5)),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock, color: Color(0xFF16ACE4)),
                labelText: 'Password',
                labelStyle: TextStyle(color: Color(0xFF16ACE4)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF16ACE4)),
                  borderRadius: BorderRadius.all(Radius.circular(13.5)),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF16ACE4)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF16ACE4)),
                  borderRadius: BorderRadius.all(Radius.circular(13.5)),
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: double.infinity, // Button width matches TextField width
              child: ElevatedButton(
                onPressed: () {
                  // You can add login logic here
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF16ACE4),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.5),
                  ),
                ),
              ),
            ),
            Spacer(),
            Text(
              'Developed by: ICCKH\nSAP Business One Cambodia',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:eticket/screens/main_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Controllers for TextFields to capture input
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
            Image.asset('assets/images/logo_icckh.png', height: 179),
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
            // Reusable TextField widget
            _buildTextField(
              label: 'UserName',
              icon: Icons.person,
              controller: _usernameController,
            ),
            SizedBox(height: 20),
            _buildTextField(
              label: 'Password',
              icon: Icons.lock,
              controller: _passwordController,
              isPassword: true,
            ),
            SizedBox(height: 30),
            // Login Button
            SizedBox(
              width: double.infinity, // Button width matches TextField width
              child: InkWell(
                onTap: () {
                  // Handle login logic
                  String username = _usernameController.text;
                  String password = _passwordController.text;
                  print("Username: $username, Password: $password");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainScreen()),
                  );
                  // You can validate and proceed with authentication here.
                },
                borderRadius: BorderRadius.circular(
                  13.5,
                ), // Ensures ripple effect follows shape
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFF16ACE4),
                    borderRadius: BorderRadius.circular(13.5),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            Spacer(),
            // Footer Text
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

  // Reusable TextField Method
  Widget _buildTextField({
    required String label,
    required IconData icon,
    required TextEditingController controller,
    bool isPassword = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Color(0xFF16ACE4)),
        labelText: label,
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  // Function to launch URLs
  void launchURL(Uri uri, bool inApp) async {
    try {
      if (await canLaunchUrl(uri)) {
        if (inApp) {
          await launchUrl(uri, mode: LaunchMode.inAppWebView);
        } else {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        }
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF16ACE4),
      ),
      body: ListView(
        children: [
          _buildTile('About Us', Icons.groups, 'https://www.icckh.com/'),
          _buildTile(
            'Knowledge',
            Icons.psychology,
            'https://www.facebook.com/people/ICCKH-SAP-Business-One-Cambodia/100076974609026/',
          ),
          _buildTile(
            'FAQ',
            Icons.question_answer,
            'https://help.sap.com/docs/SAP_BUSINESS_ONE/68a2e87fb29941b5bf959a184d9c6727/44c4c1cd7ca22e17e10000000a114a6b.html',
          ),
        ],
      ),
    );
  }

  Widget _buildTile(String title, IconData icon, String url) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      trailing: Icon(Icons.chevron_right),
      onTap: () => launchURL(Uri.parse(url), false),
    );
  }
}

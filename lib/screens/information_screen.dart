import 'package:flutter/material.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({super.key});

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF16ACE4),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.chevron_left_outlined, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.textsms_outlined, color: Colors.white),
          ),
        ],
      ),
      body: Container(
        width: 350,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header section
            _buildInfoRow("Requestor:", "Lily Kim"),
            _buildInfoRow("Workflow:", "PO Approval"),
            _buildInfoRow("Status:", "Pending", isStatus: true),

            const SizedBox(height: 16),

            // Second row section
            _buildInfoRow("Created:", "2023-07-06 10:49"),
            _buildInfoRow("Channel:", "Request Id:"),
            _buildInfoRow("", "12345"),

            const SizedBox(height: 16),

            // Stamped approval section
            Row(
              children: [
                const Text("Stamped approval confirmation:"),
                TextButton(onPressed: () {}, child: const Text("Download")),
              ],
            ),

            const SizedBox(height: 16),

            // Product/Service section
            const Text("Text (Singleline):"),
            const SizedBox(height: 4),
            const Text(
              "Product/Service",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            // Date section
            const Text("Date:"),
            const SizedBox(height: 4),
            const Text(
              "22-01-01",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 16),

            // Footer section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(color: Colors.grey.shade300)),
              ),
              child: Row(
                children: [
                  const Icon(Icons.access_time, color: Colors.orange),
                  const SizedBox(width: 8),
                  Text(
                    "This request is waiting for action →",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value, {bool isStatus = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(label, style: TextStyle(color: Colors.grey.shade600)),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isStatus ? Colors.orange : Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

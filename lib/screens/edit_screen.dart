import 'package:eticket/screens/ticket_screen.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final _formKey = GlobalKey<FormState>();
  String? selectedPriority;
  String? selectedModule;
  String title = '';
  String description = '';
  String? attachedFile;

  final List<String> priorityItems = ["Medium", "High", "Critical"];
  final List<String> moduleItems = [
    "Administration",
    "Banking",
    "Business Partners",
    "CRM",
    "Customize",
    "Financials",
    "Inventory",
    "Kubera-Web",
    "MRP",
    "Other",
    "Production",
    "Purchasing - A/P",
    "Report/Query Report",
    "Sales - A/R",
  ];

  Future<void> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        attachedFile = result.files.single.name;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: Colors.white),
          onPressed: () {
            // Navigate to the TicketScreen when the icon is clicked
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TicketScreen(),
              ), // Replace TicketScreen() with your actual screen
            );
          },
        ),
        centerTitle: true,
        title: Text("Edit Ticket", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF16ACE4),
      ), //
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Priority",
                ),
                value: selectedPriority,
                isExpanded: true,
                items:
                    priorityItems.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedPriority = newValue;
                  });
                },
              ),
              SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Module",
                ),
                value: selectedModule,
                isExpanded: true,
                items:
                    moduleItems.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedModule = newValue;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Title",
                ),
                maxLines: 3,
                onChanged: (value) {
                  setState(() {
                    title = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Description",
                ),
                maxLines: 3,
                onChanged: (value) {
                  setState(() {
                    description = value;
                  });
                },
              ),
              SizedBox(height: 16.0),

              // Add the text above the button
              Text(
                "File (Maximum 5 MB)",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ), // Customize text style as needed
              ),

              ElevatedButton(onPressed: pickFile, child: Text("Attach File")),
              if (attachedFile != null) ...[
                SizedBox(height: 8.0),
                Text("Attached: $attachedFile"),
              ],
              SizedBox(height: 16.0),
              Center(
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF16ACE4),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Form Submitted")),
                        );
                      }
                    },
                    child: Text("Update"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

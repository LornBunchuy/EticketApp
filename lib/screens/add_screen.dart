import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:eticket/screens/ticket_screen.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
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

  Widget _buildTextBox(
    String label,
    ValueChanged<String> onChanged, {
    int maxLines = 1,
  }) {
    return TextFormField(
      decoration: InputDecoration(
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
        labelText: label,
      ),
      maxLines: maxLines,
      onChanged: onChanged,
    );
  }

  Widget _buildComboBox(
    String label,
    String? selectedValue,
    List<String> items,
    ValueChanged<String?> onChanged,
  ) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: label,
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
      value: selectedValue,
      isExpanded: true,
      items:
          items.map((String item) {
            return DropdownMenuItem<String>(value: item, child: Text(item));
          }).toList(),
      onChanged: onChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: Colors.white),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => TicketScreen()),
            );
          },
        ),
        centerTitle: true,
        title: Text("Add New Ticket", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF16ACE4),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 16.0),
              Icon(
                Icons.archive_rounded, // Replace with your desired icon
                size: 150.0, // Icon size 150
              ),
              SizedBox(height: 20.0),
              _buildComboBox("Priority", selectedPriority, priorityItems, (
                String? newValue,
              ) {
                setState(() {
                  selectedPriority = newValue;
                });
              }),
              SizedBox(height: 16.0),
              _buildComboBox("Module", selectedModule, moduleItems, (
                String? newValue,
              ) {
                setState(() {
                  selectedModule = newValue;
                });
              }),
              SizedBox(height: 16.0),
              _buildTextBox("Title", (value) {
                setState(() {
                  title = value;
                });
              }, maxLines: 3),
              SizedBox(height: 16.0),
              _buildTextBox("Description", (value) {
                setState(() {
                  description = value;
                });
              }, maxLines: 3),
              SizedBox(height: 16.0),
              Container(
                width: double.infinity, // 100% width
                child: OutlinedButton(
                  onPressed: pickFile,
                  child: Text("Attach File (Maximum 5 MB)"),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xFF16ACE4)), // Border color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        13.0,
                      ), // Border radius of 8.0
                    ),
                  ),
                ),
              ),
              if (attachedFile != null) ...[
                SizedBox(height: 8.0),
                Text("Attached: $attachedFile"),
              ],
              SizedBox(height: 16.0),
              Center(
                child: Container(
                  child: SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF16ACE4),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // You can access the values here and process them
                          String priority = selectedPriority ?? "No Priority";
                          String module = selectedModule ?? "No Module";
                          String ticketTitle = title;
                          String ticketDescription = description;
                          String? file = attachedFile;

                          // Print values for demonstration (you can send them to a backend or use them elsewhere)
                          print("Priority: $priority");
                          print("Module: $module");
                          print("Title: $ticketTitle");
                          print("Description: $ticketDescription");
                          print("Attached File: $file");

                          // Display the snack bar
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Form Submitted")),
                          );
                        }
                      },
                      child: Text("Submited", style: TextStyle(fontSize: 20.0)),
                    ),
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

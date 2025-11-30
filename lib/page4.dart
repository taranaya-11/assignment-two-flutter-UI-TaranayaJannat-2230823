import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  final String name = "Taranaya Jannat";
  final String studentId = "2230823";
  final String email = "2230823@iub.edu.bd";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              CircleAvatar(
                radius: 40,
                child: Text("TJ", style: TextStyle(fontSize: 24)),
              ),

              SizedBox(height: 20),

              // NAME FIELD
              infoTile("Name", name),

              // ID FIELD
              infoTile("Student ID", studentId),

              // EMAIL FIELD
              infoTile("Email", email),

              SizedBox(height: 20),

              infoTile(
                "Bio / Story",
                "I am a dedicated IUB student balancing studies with building practical projects.",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget infoTile(String title, String value) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(color: Colors.grey, fontSize: 12)),
          SizedBox(height: 5),
          Text(value,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

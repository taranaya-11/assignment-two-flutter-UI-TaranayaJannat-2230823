import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(child: Text("T")),
                title: Text("Welcome back,"),
                subtitle: Text("Taranaya Jannat",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.notifications),
              ),

              SizedBox(height: 20),

              Text("My Cards",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

              SizedBox(height: 20),

              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("4567 **** **** 1234",
                        style: TextStyle(color: Colors.white)),
                    Spacer(),
                    Text("CARD HOLDER",
                        style: TextStyle(color: Colors.white70)),
                    Text("Taranaya Jannat",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

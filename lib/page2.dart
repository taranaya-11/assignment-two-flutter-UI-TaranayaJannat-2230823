import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final String name = "Taranaya Jannat";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TOP BAR
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    child: Text("TJ", style: TextStyle(fontSize: 18)),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome back,", style: TextStyle(fontSize: 14)),
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.notifications_none),
                ],
              ),

              SizedBox(height: 25),

              // MONTHLY SPENDING REPORT
              Text("Monthly Spending Report",
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),

              SizedBox(height: 20),

              // EXPENSE CARD
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total Expenses (Last 30 days)",
                        style:
                            TextStyle(fontSize: 14, color: Colors.grey)),
                    SizedBox(height: 8),
                    Text(
                      "-\$1270.00",
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "↑ Up 12% from last month",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),

              Text("Spending Breakdown",
                  style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

              SizedBox(height: 15),

              spendingTile("Food & Drink", 450, 35, Colors.red),
              spendingTile("Shopping", 320, 25, Colors.blue),
              spendingTile("Housing", 280, 22, Colors.orange),
              spendingTile("Transport", 150, 12, Colors.green),
              spendingTile("Other", 70, 6, Colors.grey),
            ],
          ),
        ),
      ),
    );
  }

  Widget spendingTile(
      String category, double amount, int percent, Color color) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(category,
                  style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              Text("\$${amount.toStringAsFixed(2)} ($percent%)",
                  style: TextStyle(fontSize: 14)),
            ],
          ),
          SizedBox(height: 6),
          LinearProgressIndicator(
            value: percent / 100,
            color: color,
            backgroundColor: Colors.grey.shade300,
            minHeight: 6,
          )
        ],
      ),
    );
  }
}

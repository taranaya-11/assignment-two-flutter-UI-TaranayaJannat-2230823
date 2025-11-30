import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
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
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.notifications_none)
                ],
              ),

              SizedBox(height: 25),

              // BALANCE CARD
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xff4B4DED),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total Balance",
                        style:
                            TextStyle(color: Colors.white70, fontSize: 14)),
                    SizedBox(height: 8),
                    Text("\$8,945.32",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),

                    // SAVINGS + LAST 30 DAYS
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Savings: \$5,500",
                            style: TextStyle(color: Colors.white70)),
                        Text("Last 30 days: +\$300",
                            style: TextStyle(color: Colors.white70)),
                      ],
                    )
                  ],
                ),
              ),

              SizedBox(height: 20),

              // ACTION BUTTONS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  actionButton(Icons.sync_alt, "Transfer"),
                  actionButton(Icons.receipt_long, "Pay Bills"),
                  actionButton(Icons.show_chart, "Invest"),
                ],
              ),

              SizedBox(height: 20),

              // RECENT TRANSACTIONS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recent Transactions",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text("View All",
                      style: TextStyle(color: Colors.blue, fontSize: 14)),
                ],
              ),

              SizedBox(height: 15),
              transactionTile("Netflix Subscription", "Entertainment", "Today",
                  "-19.99"),
              transactionTile("Coffee Shop", "Food & Drink", "Today", "-4.50"),
              transactionTile("Salary Deposit", "Income", "Yesterday",
                  "+3500.00",
                  positive: true),
              transactionTile("Grocery Store", "Shopping", "Yesterday",
                  "-55.80"),
              transactionTile("Amazon Purchase", "Shopping", "2 days ago",
                  "-120.45"),
            ],
          ),
        ),
      ),
    );
  }

  Widget actionButton(IconData icon, String label) {
    return Container(
      width: 100,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, size: 28, color: Colors.blue),
          SizedBox(height: 8),
          Text(label, style: TextStyle(fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  Widget transactionTile(
      String title, String category, String time, String amount,
      {bool positive = false}) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: Colors.grey.shade200,
            child: Icon(Icons.shopping_bag, color: Colors.grey.shade600),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text("$category • $time",
                    style: TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            ),
          ),
          Text(
            (positive ? "+\$" : "-\$") + amount.replaceAll("+", "").replaceAll("-", ""),
            style: TextStyle(
              color: positive ? Colors.green : Colors.red,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

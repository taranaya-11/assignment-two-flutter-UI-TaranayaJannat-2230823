import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),

            // HEADER
            Row(
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person, size: 40, color: Colors.white),
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Taranaya Jannat",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "ID: 2230823",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),

            const SizedBox(height: 30),

            const Text("Quick Access",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                cardItem(Icons.book, "Courses"),
                cardItem(Icons.assignment, "Assignments"),
                cardItem(Icons.dashboard, "Dashboard"),
              ],
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                cardItem(Icons.calendar_today, "Schedule"),
                cardItem(Icons.notifications, "Alerts"),
                cardItem(Icons.settings, "Settings"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget cardItem(IconData icon, String title) {
    return Container(
      height: 110,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue.shade50,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 35, color: Colors.blue),
          const SizedBox(height: 10),
          Text(title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          settingsTile(Icons.person, "Profile"),
          settingsTile(Icons.lock, "Privacy"),
          settingsTile(Icons.notifications, "Notifications"),
          settingsTile(Icons.info, "About App"),
          settingsTile(Icons.logout, "Logout"),
        ],
      ),
    );
  }

  Widget settingsTile(IconData icon, String text) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(text,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        trailing: const Icon(Icons.arrow_forward_ios, size: 18),
      ),
    );
  }
}

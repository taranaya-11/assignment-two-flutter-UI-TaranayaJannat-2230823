import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController();
  int selectedIndex = 0;

  void onTapped(int index) {
    setState(() => selectedIndex = index);
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) => setState(() => selectedIndex = index),
        children: const [
          Page1(),
          Page2(),
          Page3(),
          Page4(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Page 1"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Page 2"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Page 3"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Page 4"),
        ],
      ),
    );
  }
}

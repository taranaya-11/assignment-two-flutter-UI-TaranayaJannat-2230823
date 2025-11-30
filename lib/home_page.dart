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
  final PageController pageController = PageController();
  int selectedIndex = 0;

  void onTapped(int index) {
    setState(() => selectedIndex = index);
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  BottomNavigationBarItem navItem(IconData icon, String label) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const ClampingScrollPhysics(),
        onPageChanged: (i) => setState(() => selectedIndex = i),
        children: const [
          Page1(),
          Page2(), // you asked for Page 2
          Page3(),
          Page4(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onTapped,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          navItem(Icons.home_outlined, 'Home'),
          navItem(Icons.pie_chart_outline, 'Reports'),
          navItem(Icons.credit_card_outlined, 'Cards'),
          navItem(Icons.person_outline, 'Profile'),
        ],
      ),
    );
  }
}

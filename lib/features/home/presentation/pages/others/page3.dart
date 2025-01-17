import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const Center(child: Text("Home Screen")),
    const Center(child: Text("Tasks Screen")),
    const Center(child: Text("Requests Screen")),
    const Center(child: Text("Attendance Screen")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed, // Ensures all items are shown
        selectedItemColor: Colors.green, // Color for the selected tab
        unselectedItemColor: Colors.grey, // Color for the unselected tabs
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline),
            label: "Tasks",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: "Requests",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: "Attendance",
          ),
        ],
      ),
    );
  }
}

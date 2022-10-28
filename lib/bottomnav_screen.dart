import 'package:alifsoft/account_screen.dart';
import 'package:alifsoft/add_screen.dart';
import 'package:alifsoft/chat_screen.dart';
import 'package:alifsoft/home.dart';
import 'package:alifsoft/my_ads_screen.dart';
import 'package:flutter/material.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({super.key});

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [
    HomeScreen(),
    My_Ads_Screen(),
    Add_Screen(),
    ChatScreen(),
    Account_Screen()
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            selectedItemColor: Colors.purple,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_bag,
                  ),
                  label: 'My Ads'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add,
                  ),
                  label: 'Add'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.chat,
                  ),
                  label: 'Chat'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_box,
                  ),
                  label: 'Account'),
            ]),
        body: _pages[_currentIndex]);
  }
}

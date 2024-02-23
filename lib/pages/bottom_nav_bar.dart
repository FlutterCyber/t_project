import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:t_project/pages/home_page.dart';
import 'package:t_project/pages/message_page.dart';
import 'package:t_project/pages/profile_page.dart';
import 'package:t_project/pages/search_page.dart';

class BottomNavBar extends StatefulWidget {
  static const String id = "bottom_nav_bar";

  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late PageController _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index1) {
          setState(() {
            _selectedIndex = index1;
          });
        },
        children: [
          HomePage(),
          MessagePage(),
          SearchPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(IconlyBold.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(IconlyBold.message), label: "Message"),
          BottomNavigationBarItem(
              icon: Icon(IconlyBold.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(IconlyBold.profile), label: "Profile"),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: (int index2) {
          setState(() {
            _selectedIndex = index2;
            _pageController.animateToPage(index2,
                duration: Duration(milliseconds: 200), curve: Curves.easeIn);
          });
        },
      ),
    );
  }
}

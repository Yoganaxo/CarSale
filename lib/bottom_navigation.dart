import 'package:carapp/Widgets/Mainpage/inside_page.dart';
import 'package:carapp/Widgets/page_navigated_to/profile_setting.dart';
import 'package:carapp/Widgets/page_navigated_to/saved_post.dart';
import 'package:carapp/Widgets/page_navigated_to/sell_page.dart';
import 'package:flutter/material.dart';

class RootBottomNavigation extends StatefulWidget {
  const RootBottomNavigation();

  @override
  State<RootBottomNavigation> createState() => _RootBottomNavigationState();
}

class _RootBottomNavigationState extends State<RootBottomNavigation> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children:  [
          const FirstPage(),
          const SavedPost(),
          const SellCarPage(),
          ProfileSettingsPage(userProfile: UserProfile(name: 'Emmanuel chukwu', email: 'emmachuks@gmail.com'), userSettings: UserSettings(theme: 'light', notifications: true )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.black45,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_add), label: 'Saved'),
          BottomNavigationBarItem(
              icon: Icon(Icons.sell_rounded), label: 'Sell'),
          BottomNavigationBarItem(icon: Icon(Icons.face), label: 'Profile'),
        ],
      ),
    );
  }
}

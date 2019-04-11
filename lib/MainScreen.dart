import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'ProjectList.dart';
import 'profile.dart';
import 'leaderboard.dart';
import 'componentList.dart';
class MainScreen extends StatefulWidget {

  static const String routeName = "/mainscreen";
  @override  _MainScreen createState() => new _MainScreen();
}

// SingleTickerProviderStateMixin is used for animation

class _MainScreen extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    new HomeScreen(),
    new ProjectList(),
    new LeadersList(),
    new ProfilePage()
  ];

  @override  Widget build(BuildContext context) {
    return new Scaffold(
      // Appbar        appBar: new AppBar(
      // Title          title: new Text("Bottom Navigation"),
      // Set the background color of the App Bar          backgroundColor: Colors.blue,

        body: _children[_currentIndex],

        // Set the bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
            onTap: onTabTapped,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: new Icon(Icons.home),
                  title: new Text('Home')),
              BottomNavigationBarItem(
                  icon: new Icon(Icons.add_box),
                  title: new Text('Projects')),
              BottomNavigationBarItem(
                  icon: new Icon(Icons.border_top),
                  title: new Text('Leaderboard')),
              BottomNavigationBarItem(
                  icon: new Icon(Icons.account_circle),
                  title: new Text('Profile')),
            ]),

    );
  }
}



class Contact {
  final String fullName;
  final String email;

  const Contact({this.fullName, this.email});
}
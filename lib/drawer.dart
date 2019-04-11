import 'package:flutter/material.dart';
import 'SplashScreen.dart';
import 'package:cia_flutter/ProjectList.dart';
import 'componentList.dart';
import 'chatScreen.dart';
import 'profile.dart';
import 'addProject.dart';
import 'addComponent.dart';
import 'claim_points.dart';
import 'notifications.dart';
import 'leaderboard.dart';
import 'package:cia_flutter/ProjectList2.dart';

Drawer getNavDrawer(BuildContext context) {
  var headerChild = new DrawerHeader(child: new Image.asset("assets/images/avengers.png"));


  var aboutChild = new AboutListTile(
      child: new Text("About"),
      applicationName: "CIA",
      applicationVersion: "v1.0.0",
      applicationIcon: new Icon(Icons.adb),
      icon: new Icon(Icons.info));

  ListTile getNavItem(var icon, String s, String routeName) {
    return new ListTile(
      leading: new Icon(icon),
      title: new Text(s),
      onTap: () {
        // setState(() {
        print(routeName);
        // pop closes the drawer
        Navigator.of(context).pop();
        // navigate to the route
        Navigator.of(context).pushNamed(routeName);
        // });
      },
    );
  }

  var myNavChildren = [
    headerChild,
    getNavItem(Icons.home, "Home", "/home"),
    getNavItem(Icons.work, "Projects", ProjectList.routeName),
    getNavItem(Icons.satellite, "Components", ComponentList.routeName),
    getNavItem(Icons.satellite, "Leaderboard", LeadersList.routeName),
    getNavItem(Icons.account_circle, "Profile", ProfilePage.routeName),
    getNavItem(Icons.forum, "Forum", ChatScreen.routeName),
    getNavItem(Icons.control_point_duplicate, "Claim Points",ClaimPoints.routeName),
    getNavItem(Icons.satellite, "Notifications", NotificationList.routeName),
    getNavItem(Icons.satellite, "Schedule", NotificationList.routeName),


    Divider(),
    getNavItem(Icons.add_to_queue, "+ Projects", AddProject.routeName),
    getNavItem(Icons.add_box, "+ Components", AddComponent.routeName),

    aboutChild
  ];

  ListView listView = new ListView(children: myNavChildren);

  return new Drawer(

    child: listView,
  );
}
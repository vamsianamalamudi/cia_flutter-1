import 'package:flutter/material.dart';
import 'SplashScreen.dart';
import 'package:cia_flutter/Constant.dart';
import 'HomeScreen.dart';
import 'ProjectList.dart';
import 'componentList.dart';
import 'package:cia_flutter/profile.dart';
import 'addProject.dart';
import 'addComponent.dart';
import 'chatScreen.dart';
import 'loginPage.dart';
import 'MainScreen.dart';
import 'notifications.dart';
import 'claim_points.dart';
import 'package:cia_flutter/ProjectList2.dart';

/*
void main() => runApp(MaterialApp(
  title: 'GridView Demo',
  home: SplashScreen(),

  debugShowCheckedModeBanner: false,
  theme: new ThemeData.dark(),*//*new ThemeData(
    primarySwatch: Colors.green,
    accentColor: Colors.lightGreenAccent,
    // Set background color
    backgroundColor: Colors.black12,
  ),*//*
  routes: <String, WidgetBuilder>{
    SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
    HOME_SCREEN: (BuildContext context) => HomeScreen(),
     '/project':  (BuildContext context) => ProjectList(),


    //GRID_ITEM_DETAILS_SCREEN: (BuildContext context) => GridItemDetails(),
  },
));*/

const PrimaryColor = const Color(0xFF151026);

void main() {
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData.dark(),
      //theme: new ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
      home: new SplashScreen(), // route for home is '/' implicitly
      routes: <String, WidgetBuilder>{
        ProjectList.routeName: (BuildContext context) => new ProjectList(),
        ProjectList2.routeName: (BuildContext context) => new ProjectList2(),
        SplashScreen.routeName: (BuildContext context) => new SplashScreen(),
        '/home': (BuildContext context) => new HomeScreen(),
        ClaimPoints.routeName: (BuildContext context) => new ClaimPoints(),
        ComponentList.routeName: (BuildContext context) => new ComponentList(),
            NotificationList.routeName: (BuildContext context) => new NotificationList(),

            ProfilePage.routeName: (BuildContext context) => new ProfilePage(),
        AddProject.routeName: (BuildContext context) => new AddProject(),
        AddComponent.routeName: (BuildContext context) => new AddComponent(),
        LoginPage.routeName: (BuildContext context) => new LoginPage(),
        ChatScreen.routeName: (BuildContext context) => new ChatScreen(),
        MainScreen.routeName: (BuildContext context) => new MainScreen(),
        //ClaimPoints.routeName: (BuildContext context) => new ClaimPoints(),

      }));
}
// define the routes
//SettingsScreen.routeName: (BuildContext context) => new SettingsScreen(),
//AccountScreen.routeName: (This .../flutter/bin/cache/dart-sdk/bin is the location of your Dart SDK. Assuming you say the same Dart SDK is not configured error accompanied by something where you can configure your Dart SDK. You click the configure option and set .../flutter/bin/cache/dart-sdk/bin as your SDK. That should fix your problem. If not head over to the next step.
/*BuildContext context) => new AccountScreen()
},
));*/
//}
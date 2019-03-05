import 'package:flutter/material.dart';
import 'SplashScreen.dart';
import 'package:cia_flutter/Constant.dart';
import 'HomeScreen.dart';
import 'ProjectList.dart';
import 'componentList.dart';
import 'package:cia_flutter/profile.dart';
import 'addProject.dart';
import 'addComponent.dart';
import 'loginPage.dart';


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
    theme: new ThemeData.light(),
    //theme: new ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
    home: new SplashScreen(), // route for home is '/' implicitly
    routes: <String, WidgetBuilder>{
      ProjectList.routeName : (BuildContext context) => new ProjectList(),
      SplashScreen.routeName : (BuildContext context)=> new SplashScreen(),
      '/home' : (BuildContext context)=> new HomeScreen(),
      ComponentList.routeName : (BuildContext context)=> new ComponentList(),
      ProfilePage.routeName : (BuildContext context)=> new ProfilePage(),
      AddProject.routeName : (BuildContext context)=> new AddProject(),
      AddComponent.routeName : (BuildContext context)=> new AddComponent(),
      LoginPage.routeName : (BuildContext context)=> new LoginPage(),





      // define the routes
      //SettingsScreen.routeName: (BuildContext context) => new SettingsScreen(),
      //AccountScreen.routeName: (BuildContext context) => new AccountScreen(),
    },
  ));
}
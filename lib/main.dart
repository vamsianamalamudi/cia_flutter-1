import 'package:flutter/material.dart';
import 'SplashScreen.dart';
import 'package:cia_flutter/Constant.dart';
import 'HomeScreen.dart';


void main() => runApp(MaterialApp(
  title: 'GridView Demo',
  home: SplashScreen(),
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primarySwatch: Colors.red,
    accentColor: Color(0xFF761322),
  ),
  routes: <String, WidgetBuilder>{
    SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
    HOME_SCREEN: (BuildContext context) => HomeScreen(),
    //GRID_ITEM_DETAILS_SCREEN: (BuildContext context) => GridItemDetails(),
  },
));

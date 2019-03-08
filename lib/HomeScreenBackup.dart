import 'package:flutter/material.dart';
import 'drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

const PrimaryColor = const Color(0xFF151026);
class HomeScreen extends StatefulWidget {

  String token;
  HomeScreen({this.token});



  @override
  HomeScreenState createState() => new HomeScreenState(token);
//@override
///HomeScreenState createState() => new Scaffold();

}

class HomeScreenState extends State<HomeScreen> {
  String token;

  HomeScreenState(this.token);

  Future<String> _test() async {
    var url = "http://139.59.61.35/sufi/api/check";

    // Map<String, dynamic> body = {'username': 'sufian', 'password': 'sufiboy'};
    //  print(body);
    //var data = await http.post(url,body: json.encode(body),
    var data = await http.post(url,
        headers:  {
          "Accept": "application/x-www-form-urlencoded",
          "Content-Type": "application/json",
          "Authorization":'Bearer $token'
        },  encoding: Encoding.getByName("utf-8"));

    var jsonData =  json.decode(data.body);
    print("surya");
    print(jsonData);
    //token = jsonData['token'];


/*
    if (data.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      var jsonData =  json.decode(data.body);
      print("surya");
      print(jsonData);
      //return Login.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
*/

    // this is response



  }




  /* Drawer getNavDrawer(BuildContext context) {
    var headerChild = new DrawerHeader(child: new Text("Header"));
    var aboutChild = new AboutListTile(
        child: new Text("About"),
        applicationName: "Application Name",
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
      getNavItem(Icons.settings, "Projects", ProjectList.routeName),

      getNavItem(Icons.account_box, "Account", ProjectList.routeName),
      aboutChild
    ];

    ListView listView = new ListView(children: myNavChildren);

    return new Drawer(
      child: listView,
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return new Scaffold(


      appBar: new AppBar(
        // backgroundColor: PrimaryColor,
        title: new Text("Home"),
      ),
      // appBar: topAppBar,
      body:new Column(

        //
        children: <Widget>[


          new Center(

              child : new Container(

                  child: new Text("Hey! Whats up ?", style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,


                  ),


                  )
              )
          ),

          new Container(
            child: new Image.asset('assets/images/logo.png'),
          ),
          new Flexible(
            child: GridView.count(


                crossAxisCount: 2,
                padding: EdgeInsets.all(1.0),

                children: [
                  Card(
                    color: Colors.white,
                    borderOnForeground: true,
                    clipBehavior: Clip.hardEdge,
                    margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),

                    ),
                    child: Stack(
                        children: <Widget> [
                          /*   new Image.asset(
        'assets/images/movie_banner_1.png'),*/
                          Center(child: Text("No idea",style: TextStyle(inherit: true))),
                        ]
                    ),
                  ),
                  Card(
                    color: Colors.red,
                    borderOnForeground: true,
                    clipBehavior: Clip.hardEdge,
                    margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),

                    ),
                    child: Stack(
                        children: <Widget> [
                          /*   new Image.asset(
        'assets/images/movie_banner_1.png'),*/
                          Center(child: Text("No idea",style: TextStyle(inherit: true))),
                        ]
                    ),
                  ),
                  Card(

                    borderOnForeground: true,
                    clipBehavior: Clip.hardEdge,
                    margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),

                    ),
                    child: Stack(
                        children: <Widget> [
                          /*   new Image.asset(
        'assets/images/movie_banner_1.png'),*/
                          Center(child: Text("No idea",style: TextStyle(inherit: true))),
                        ]
                    ),
                  ),
                  Card(

                    borderOnForeground: true,
                    clipBehavior: Clip.hardEdge,
                    margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),

                    ),
                    child: Stack(
                        children: <Widget> [
                          new Image.asset(
                              'assets/images/logo.png'),
                          Center(child: Text("No idea",style: TextStyle(inherit: true))),
                        ]
                    ),
                  ),




                ]
            ),
          ),

        ],


      ),
      // Set the nav drawer
      drawer: getNavDrawer(context),
    );




  }

  @override
  initState() {

    super.initState();
    //Navigator.pop(context);
    _test();




  }

}
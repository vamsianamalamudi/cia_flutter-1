import 'package:flutter/material.dart';
import 'drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:cia_flutter/ProjectList.dart';
import 'componentList.dart';

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
  //double _imageHeight = 256.0;
  double _imageHeight = 100.0;

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


  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(

/*      appBar: new AppBar(
       // backgroundColor: PrimaryColor,
        title: new Text("Home"),
      ),*/
     // appBar: topAppBar,
        body:new Stack(
          children: <Widget>[

           _buildIamge2(),
            _buildTopHeader(),
            _buildProfileRow(),
             _buildBottomPart(),


          ],
        ),
      // Set the nav drawer
      drawer: getNavDrawer(context),
    );
  }

  Widget _buildIamge() {
    return new Image.asset(
      'assets/images/movie_banner_1.png',

      fit: BoxFit.cover,
      height: _imageHeight,
    );
  }

  Widget _buildIamge2() {
    return new ClipPath(
      clipper: new DialogonalClipper(),
      child: new Image.asset(
        'assets/images/vv.png',
        fit: BoxFit.fitHeight,
        height: _imageHeight,
        colorBlendMode: BlendMode.srcOver,
        color: new Color.fromARGB(120, 20, 10, 40),
      ),
      /*child: new Container(
        color: Colors.black,
        height: _imageHeight,
      ),*/
    );
  }


  Widget _buildTopHeader() {
    return new Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 32.0),
      child: new Row(
        children: <Widget>[
          new Icon(Icons.menu, size: 32.0, color: Colors.white,),
          new Expanded(
            child: new Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: new Text(
                "Timeline",
                style: new TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
          new Icon(Icons.linear_scale, color: Colors.white),
        ],
      ),
    );
  }


  Widget _buildProfileRow() {
    return new Padding(
      padding: new EdgeInsets.only(left: 16.0, top: _imageHeight / 2.5),
      child: new Row(
        children: <Widget>[
          new CircleAvatar(
            minRadius: 28.0,
            maxRadius: 28.0,
            backgroundImage: new AssetImage('assets/images/av.jpg'),
          ),
          new Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Text(
                  'Surya Murugan',
                  style: new TextStyle(
                      fontSize: 26.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                new Text(
                  'Agent Level : Noob',
                  style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomPart() {
    return new Padding(
      //padding: new EdgeInsets.only(top: _imageHeight),
      padding: new EdgeInsets.all(1),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildMyTasksHeader(),
          _buildTasksList(),
        ],
      ),
    );
  }

  Widget _buildTasksList() {
    Animation<double> animation;

    return   new Flexible(
      child: GridView.count(


          crossAxisCount: 2,
          padding: EdgeInsets.all(1.0),

          children: [
              GestureDetector(
                onTap: (){
                  print("pressed");
                  Navigator.push(
                      context, new MaterialPageRoute(
                      builder: (context) => new ProjectList()));
                },
                child: new
                Card(
                    color: Colors.white,
                    borderOnForeground: true,
                    clipBehavior: Clip.hardEdge,
                    margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),

                    ),
                    child: new Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                          children: <Widget> [
                            new Container(
                              margin: EdgeInsets.all(15),
                              width: 100,
                              height: 100,
                              child : new Image.asset(
                                  'assets/images/project.png'),
                            ),

                            Center(child: Text("Projects",style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.w800
                            ))),
                          ]
                      ),
                    )

                ),
              )

            ,
            GestureDetector(
              onTap: (){
                print("pressed");
                Navigator.push(
                    context, new MaterialPageRoute(
                    builder: (context) => new ComponentList()));
              },
              child:Card(
            color: Colors.white,
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
            elevation: 2.0,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),

            ),
            child: new Padding(
            padding: EdgeInsets.all(15),
            child: Column(
            children: <Widget> [
            new Container(
            margin: EdgeInsets.all(10),
            width: 100,
            height: 100,
    child : new Image.asset(
    'assets/images/comp.png'),
    ),

    Center(child: Text("Components",style: TextStyle(
    fontSize: 20,fontWeight: FontWeight.w800
    ))),
    ]
    ),
    )

    ) ,
            ),
            GestureDetector(
              onTap: (){
                print("pressed");
                Navigator.push(
                    context, new MaterialPageRoute(
                    builder: (context) => new ProjectList()));
              },
              child: Card(
                  color: Colors.white,
                  borderOnForeground: true,
                  clipBehavior: Clip.hardEdge,
                  margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),

                  ),
                  child: new Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                        children: <Widget> [
                          new Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 100,
                            child : new Image.asset(
                                'assets/images/forum.png'),
                          ),

                          Center(child: Text("Forum",style: TextStyle(
                              fontSize: 20,fontWeight: FontWeight.w800
                          ))),
                        ]
                    ),
                  )

              ),
            ),
              GestureDetector(
                onTap: (){
                  print("pressed");
                  Navigator.push(
                      context, new MaterialPageRoute(
                      builder: (context) => new ProjectList()));
                },
                child:    Card(
                    color: Colors.white,
                    borderOnForeground: true,
                    clipBehavior: Clip.hardEdge,
                    margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),

                    ),
                    child: new Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                          children: <Widget> [
                            new Container(
                              margin: EdgeInsets.all(10),
                              width: 100,
                              height: 100,
                              child : new Image.asset(
                                  'assets/images/events.png'),
                            ),

                            Center(child: Text("Events",style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.w800
                            ))),
                          ]
                      ),
                    )

                ),
                  ),






          ]
      ),
    );
  }

  Widget _buildMyTasksHeader() {
    return new Padding(
      padding: new EdgeInsets.only(left: 64.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            'Wassup',
            style: new TextStyle(fontSize: 34.0),
          ),
          new Text(
            'FEBRUARY 8, 2015',
            style: new TextStyle(color: Colors.grey, fontSize: 12.0),
          ),
        ],
      ),
    );
  }





}


class DialogonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.lineTo(0.0, size.height -60.0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}


 /* @override
  initState() {

    super.initState();
    //Navigator.pop(context);
  //  _test();




  }*/


import 'package:flutter/material.dart';
import 'drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:cia_flutter/ProjectList.dart';

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
  double _imageHeight = 256.0;
  //double _imageHeight = 100.0;

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

       /* bottomNavigationBar: BottomNavigationBar(

            items: [
              BottomNavigationBarItem(
                  icon: new Icon(Icons.home),
                  title: new Text('All Calls')),
              BottomNavigationBarItem(
                  icon: new Icon(Icons.add_box), title: new Text('Missed')),
              BottomNavigationBarItem(
                  icon: new Icon(Icons.alarm_add),
                  title: new Text('Received')),
            ]),*/

   /*   appBar: new AppBar(
       // backgroundColor: PrimaryColor,
        title: new Text("Home"),
      ),*/
     // appBar: topAppBar,
       /* body: new Column(
          children: <Widget>[
            new Expanded(
              child: new ListView.builder(
                itemCount: receivedCallContacts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      '${receivedCallContacts[index].fullName}',
                    ),
                    subtitle: Text('${receivedCallContacts[index].email}'),
                    leading: new CircleAvatar(
                        backgroundColor: Colors.blue,
                        child:
                        Text('${receivedCallContacts[index].fullName.substring(
                            0, 1)}')),

                    trailing: Icon(Icons.arrow_forward),
                    onTap: () => _onTapItem(context, receivedCallContacts[index]),
                  );

                },
              ),
            ),
          ],
        ),*/

      body:
      new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,

          children: <Widget>[
            new Container(
                margin: EdgeInsets.all(20),
                width: 100.0,
                height: 100.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        /*image: new NetworkImage(
                            "https://i.imgur.com/BoN9kdC.png" )*/
                        image: new AssetImage("assets/images/logo2.png" ),
                    )
                )),
            /*new Image.network(
              '',
              fit: BoxFit.scaleDown,
              scale: 2,
            ),*/

            new Text(
              "Surya Murugan",
              style: new TextStyle(fontSize:40.0,
                  color:Colors.white,
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
              textAlign: TextAlign.center,
            ),
            new Container(
              margin: EdgeInsets.all(5),
              child: new Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "UID: 1AT16CS111    ",
                    style: new TextStyle(fontSize:18.0,
                        color:Colors.white,
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                    textAlign: TextAlign.center,
                  ),
                  new Icon(Icons.star_border),
                  new Text(" 10000",style: new TextStyle(fontSize:18.0,
                      color:Colors.white,
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"),
                      textAlign: TextAlign.center)
                ],

              ),
            ),


            new Padding(padding: EdgeInsets.all(10),),


            new Padding(padding: EdgeInsets.all(10),),

            new Padding(padding: EdgeInsets.all(10),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisSize: MainAxisSize.max,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Icon(Icons.email,),
                new Text("    surya@gmail.com",
                  style: new TextStyle(fontSize:20.0,
                      color:Colors.white,
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"),
                  textAlign: TextAlign.center,)
              ],
            ),),


            new Padding(padding: EdgeInsets.all(10),
            child :  new Row(

              mainAxisAlignment: MainAxisAlignment.center,

              //mainAxisSize: MainAxisSize.max,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Icon(Icons.call,),
                new Text("  9742721625",
                  style: new TextStyle(fontSize:20.0,
                      color:Colors.white,
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"),
                  textAlign: TextAlign.center,)
              ],
            )),

            new Padding(padding:EdgeInsets.fromLTRB(10, 40, 10, 20),
                child :  new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Column(

                      mainAxisAlignment: MainAxisAlignment.center,

                      //mainAxisSize: MainAxisSize.max,
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        new Text("100",
                          style: new TextStyle(fontSize:40.0,
                              color:Colors.white,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Roboto"),
                          textAlign: TextAlign.center,),
                        new Text("Projects",
                          style: new TextStyle(fontSize:18.0,
                              color:Colors.white,
                              fontWeight: FontWeight.w200,
                              fontFamily: "Roboto"),
                          textAlign: TextAlign.center,)
                      ],
                    ),
              new VerticalDivider(width:70,),
                    new Column(

                      mainAxisAlignment: MainAxisAlignment.center,

                      //mainAxisSize: MainAxisSize.max,
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        new Text("50",
                          style: new TextStyle(fontSize:40.0,
                              color:Colors.white,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Roboto"),
                          textAlign: TextAlign.center,),
                        new Text("Events",
                          style: new TextStyle(fontSize:18.0,
                              color:Colors.white,
                              fontWeight: FontWeight.w200,
                              fontFamily: "Roboto"))
                      ],
                    )

                  ],
                ))

          ]

      ),
      // Set the nav drawer
      drawer: getNavDrawer(context),
    );
  }
  void _onTapItem(BuildContext context, Contact post) {
    Scaffold.of(context).showSnackBar(
        new SnackBar(content: new Text("Tap on " + ' - ' + post.fullName)));
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
        'assets/images/av.jpg',
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


  Widget _scores() {
    return new Padding(
        padding: new EdgeInsets.only(top: 100),
      //padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 32.0),
      child: new Card(
        elevation: 2,

        margin: EdgeInsets.fromLTRB(20,0,20,0),
        child: new Container(

          height: 70,
          child: new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              new Column(

                children: <Widget>[
                  Text("Points",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20)),
                  new Padding(padding: EdgeInsets.all(5) ,
                    child: Text("300",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30),),),



                ],
              ),


              new Column(

                children: <Widget>[
                  Text("Points",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20)),
                  new Padding(padding: EdgeInsets.all(5) ,
                    child: Text("300",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30),),),



                ],
              ),
              /*VerticalDivider(indent: 10,color: Colors.black,)
            ,
            new Column(

              children: <Widget>[
                Text("Points",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20)),
                new Padding(padding: EdgeInsets.all(5) ,
                  child: Text("300",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30),),),



              ],
            )*/
            ],
          ),
        ),
      ),
    );
  }




  Widget _buildProfileRow() {
    return new Padding(
      padding: new EdgeInsets.only(left: 75.0, top: 50 / 2.5),
    // padding: new EdgeInsets.all(10),
      child:new Container(
        child:  new Row(
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
      )
    );
  }

  Widget _buildBottomPart() {
    return new Padding(
      padding: new EdgeInsets.only(top: 175),
    //  padding: new EdgeInsets.all(1),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //_buildMyTasksHeader(),
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
                              margin: EdgeInsets.all(10),
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
                    builder: (context) => new ProjectList()));
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
            padding: EdgeInsets.all(10),
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
                    padding: EdgeInsets.all(10),
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
                      padding: EdgeInsets.all(10),
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




List<Contact> receivedCallContacts = [
  Contact(fullName: 'Pratap Kumar', email: 'pratap@example.com'),
  Contact(fullName: 'Jagadeesh', email: 'Jagadeesh@example.com'),
  Contact(fullName: 'Srinivas', email: 'Srinivas@example.com'),
];

class Contact {
  final String fullName;
  final String email;

  const Contact({this.fullName, this.email});
}
 /* @override
  initState() {

    super.initState();
    //Navigator.pop(context);
  //  _test();




  }*/


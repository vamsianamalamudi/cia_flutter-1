import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:image_picker/image_picker.dart';

import 'dart:io';
import 'model/points.dart';
import 'drawer.dart';
import 'EditProfile.dart';

class ProfilePage extends StatefulWidget {
  static const String routeName = "/profile";
  final PointItem pointItem;

  ProfilePage({this.pointItem});
  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  bool _status = true;
  final FocusNode myFocusNode = FocusNode();
  final PointItem pointItem1;

  MapScreenState({this.pointItem1});
  String usn ='1AT16CS119';
  String name=' Vamsi';
  String mail_id='vamsi0104@gmail.com';
  String phone_no='8073672615';
  File _image;

  Future getImage() async {
  //  var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
    //  _image = image;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       /* appBar: new AppBar(
          // backgroundColor: PrimaryColor,
          title: new Text("Profile"),
        ),*/
        drawer: getNavDrawer(context),
        floatingActionButton: new FloatingActionButton(
          onPressed:() {
            Navigator.push(
                context, new MaterialPageRoute(
                builder: (context) => new EditProfile(/*name,usn,mail_id,phone_no*/)));
          },
          backgroundColor: Colors.white,
          //if you set mini to true then it will make your floating button small
          mini: false,
          child: new Icon(Icons.edit),
        ),
/*      drawer: getNavDrawer(context) ,*/
        body: new Column(
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
                        image: new AssetImage("assets/images/avengers.png" ),
                      )
                  )),
              /*new Image.network(
              '',
              fit: BoxFit.scaleDown,
              scale: 2,
            ),*/

              new Text(
                name,
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
                      "UID: "+ usn,
                      style: new TextStyle(fontSize:18.0,
                          color:Colors.white,
                          fontWeight: FontWeight.w200,
                          fontFamily: "Roboto"),
                      textAlign: TextAlign.center,
                    ),
                    new Icon(Icons.star_border),

                    /*new Text(pointItem1.getpusn().toString(),style: new TextStyle(fontSize:18.0,
                        color:Colors.white,
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                        textAlign: TextAlign.center)*/
                    new Text("1000",style: new TextStyle(fontSize:18.0,
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
                    new Text(mail_id,
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
                      new Text(phone_no,
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

        ));
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myFocusNode.dispose();
    super.dispose();
  }

  Widget _getActionButtons() {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 45.0),
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Container(
                  child: new RaisedButton(
                    child: new Text("Save"),
                   // textColor: Colors.white,
                    color: Colors.green,
                    onPressed: () {
                      setState(() {
                        _status = true;
                        FocusScope.of(context).requestFocus(new FocusNode());
                      });
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0)),
                  )),
            ),
            flex: 2,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Container(
                  child: new RaisedButton(
                    child: new Text("Cancel"),
                   // textColor: Colors.white,
                    color: Colors.red,
                    onPressed: () {
                      setState(() {
                        _status = true;
                        FocusScope.of(context).requestFocus(new FocusNode());
                      });
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0)),
                  )),
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }

  Widget _getEditIcon() {
    return new GestureDetector(
      child: new CircleAvatar(
      //  backgroundColor: Colors.red,
        radius: 14.0,
        child: new Icon(
          Icons.edit,

          size: 16.0,
        ),
      ),
      onTap: () {
        setState(() {
          _status = false;
        });
      },
    );
  }
}
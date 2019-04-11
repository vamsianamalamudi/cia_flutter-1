import 'package:flutter/material.dart';
import 'drawer.dart';

class EditProfile extends StatelessWidget {
  static const String routeName = "/editprofile";

 // EditProfile({this.name,this.uid,this.mail_id,this.phone_no});
  String uid,name,mail_id,phone_no;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: getNavDrawer(context),
      appBar: AppBar(
        title: Text('EDIT PROFILE'),
        backgroundColor: Colors.black,
      ),
      body: new Container(


          child: new Form(

            child: new ListView(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(
                        left: 25.0, right: 25.0, top: 18.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        new Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            new Container(),
                          ],
                        )
                      ],
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        left: 25.0, right: 25.0, top: 25.0),
                    child: new Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        new Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            new Text(
                              'Name',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        left: 25.0, right: 25.0, top: 2.0),
                    child: new Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        new Flexible(
                          child: new TextField(
                            decoration: const InputDecoration(
                              hintText: "from database" ,
                            ),


                          ),
                        ),
                      ],
                    )),


                Padding(
                    padding: EdgeInsets.only(
                        left: 25.0, right: 25.0, top: 25.0),
                    child: new Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        new Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            new Text(
                              'E-MAIL',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        left: 25.0, right: 25.0, top: 2.0),
                    child: new Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        new Flexible(
                          child: new TextField(
                            decoration: const InputDecoration(
                            hintText: "FROM DATABASE"

                            ),
                          ),
                        ),
                      ],
                    )),




                Padding(
                    padding: EdgeInsets.only(
                        left: 25.0, right: 25.0, top: 25.0),
                    child: new Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        new Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            new Text(
                              'PHONE NUMBER',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    )),




                Padding(
                    padding: EdgeInsets.only(
                        left: 25.0, right: 25.0, top: 2.0),
                    child: new Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        new Flexible(
                          child: new TextField(
                            decoration: const InputDecoration(
                               hintText: "FROM DATABASE"

                            ),
                          ),
                        ),
                      ],
                    )),
                new Container(width: 50,


                    child: new RaisedButton(
                      elevation: 2.0,
                      padding: EdgeInsets.only(
                          left: 25.0, right: 25.0, bottom: 2.0),
                      child: new ListTile(
                        leading: Icon(Icons.update,color: Colors.white,),
                        title: Text(" UPDATE",style: TextStyle(color: Colors.white),),
                      ),
                      onPressed: ()
                      {
                        Navigator.pop(context);

                      },
                      color: Colors.black,
                    ))




              ],

            ),
          ),

      ),);
  }
}
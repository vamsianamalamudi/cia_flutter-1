import 'package:flutter/material.dart';
import 'package:cia_flutter/drawer.dart';
import 'package:cia_flutter/model/projectItem.dart';


class ProjDetails extends StatelessWidget {

  final ProjectItem projectItem;

  ProjDetails({this.projectItem});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     // drawer: getNavDrawer(context),
      appBar: new AppBar(
        title: new Text("More Details"),
        backgroundColor: Colors.black,

      ),
          body: new Container(

            child: new ListView(
              children: <Widget>[
                new CircleAvatar(
                  radius: 200.0,
                  backgroundImage: new NetworkImage(projectItem.getimage()),
                ),
               /* new CircleAvatar(
                  radius: 200.0,
                  backgroundImage: new NetworkImage("https://picsum.photos/250?image=9"),
                ),*/
                new ListTile(
                  title: Text("PROJECT ID:     "+projectItem.getpid().toString()),

                ),
                new Divider(
                  height: 1.0,
                  color: Colors.red,
                ),


                new ListTile(
                  title: Text("PROJECT NAME:    "+projectItem.getprojectName().toString()),

                ),
                new Divider(
                  height: 1.0,
                  color: Colors.red,
                ),
                new ListTile(
                  title: Text("PROJECT HEAD:     "+projectItem.getuid().toString()),

                ),
                new Divider(
                  height: 1.0,
                  color: Colors.red,
                ),
                // new ListTile(
                //   title: Text(componentItem.geturll().toString()),
                // ),
                new ListTile(
                  title: Text("IDK:      "+projectItem.getiid().toString()),

                ),
                new Divider(
                  height: 1.0,
                  color: Colors.red,
                ),


                new ListTile(
                  title: Text("START DATE:      "+projectItem.getsd().toString()),

                ),
                new Divider(
                  height: 1.0,
                  color: Colors.red,
                ),
                new ListTile(
                  title: Text("END DATE:      "+projectItem.geted().toString()),

                ),
                new Divider(
                  height: 1.0,
                  color: Colors.red,
                ),
                new ListTile(
                  title: Text("DESCRIPTION:     "+projectItem.getdescription().toString()),

                ),
                new Divider(
                  height: 1.0,
                  color: Colors.red,
                ),
                new ListTile(
                  title: Text("MODEL-ID:    "+projectItem.getcost().toString()),

                ),
                new Divider(
                  height: 1.0,
                  color: Colors.red,
                ),
                new ListTile(
                  title: Text("BUDGET:   "+projectItem.getbudget().toString()),

                ),
                new Divider(
                  height: 1.0,
                  color: Colors.red,
                ),
                new ListTile(
                  title: Text("URL:    "+projectItem.geturll().toString()),

                ),
                new Divider(
                  height: 1.0,
                  color: Colors.red,
                ),
                new ListTile(
                  title: Text("STATUS:  "+projectItem.getsta().toString()),

                ),
               


              ],
            ),
          ),
        );

  }
}

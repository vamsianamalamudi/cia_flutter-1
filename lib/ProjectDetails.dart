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
      drawer: getNavDrawer(context),
          appBar: new AppBar(
            title: new Text("More Details"),
            backgroundColor: Colors.black,

          ),
          body: new Container(

            child: new ListView(
              children: <Widget>[
                new CircleAvatar(
                  radius: 100.0,
                  backgroundImage: new NetworkImage(projectItem.getimage()),
                ),

                new ListTile(
                  title: Text("ITEM ID:     "+projectItem.getpid().toString()),

                ),


                new ListTile(
                  title: Text("ITEM NAME:    "+projectItem.getprojectName().toString()),

                ),
                new ListTile(
                  title: Text("ITEM QUANTITY:     "+projectItem.getuid().toString()),

                ),
                // new ListTile(
                //   title: Text(componentItem.geturll().toString()),
                // ),
                new ListTile(
                  title: Text("ITEM SPECIFICATION:      "+projectItem.getiid().toString()),

                ),


                new ListTile(
                  title: Text("COST:      "+projectItem.getsd().toString()),

                ),
                new ListTile(
                  title: Text("MANUFACTURER:      "+projectItem.geted().toString()),

                ),
                new ListTile(
                  title: Text("DESCRIPTION:     "+projectItem.getdescription().toString()),

                ),
                new ListTile(
                  title: Text("MODEL-ID:    "+projectItem.getcost().toString()),

                ),
                new ListTile(
                  title: Text("DSL:   "+projectItem.getbudget().toString()),

                ),
                new ListTile(
                  title: Text("LOCATION CABINET:    "+projectItem.geturll().toString()),

                ),
                new ListTile(
                  title: Text("LOCATION CUPBOARD:  "+projectItem.getsta().toString()),

                ),


              ],
            ),
          ),
        );

  }
}

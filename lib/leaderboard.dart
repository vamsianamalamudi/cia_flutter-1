import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:cia_flutter/ProjectDetails.dart';
import 'package:cia_flutter/drawer.dart';

import 'package:cia_flutter/ColorLoader2.dart';


import 'package:cia_flutter/model/projectItem.dart';


class LeadersList extends StatelessWidget {
  static const String routeName = "/leaders";

  @override
  Widget build(BuildContext context) {
    return  new LeadersAllList();

  }}
class LeadersAllList extends StatefulWidget{

  @override
  _LeadersAllListState createState() => new _LeadersAllListState();


}

class _LeadersAllListState extends State<LeadersAllList> {
//////////////////////////////////////////////////////////////////

  Future<List<ProjectItem>>  _getUsers() async {

    var data = await http.post('http://139.59.61.35/sufi/project/get');

    var jsonData =  json.decode(data.body);

    List<ProjectItem> projectitemlist = [];

    for (var project in jsonData){
      ProjectItem element = ProjectItem(
          project["project_id"],
          project["project_name"],
          project["user_id"],
          project["description"],
          project["item_id"],
          project["image"],
          project["url"],
          project["started_date"],
          project["end_date"],
          project["status"],
          project["budget"],
          project["cost"]
      );
      projectitemlist.add(element);

    }
    ProjectItem projectItem = new ProjectItem(1
        ,'Vamsi', '2', 'Something on grid',
        '3', 'image', 'www.google.com',
        '10-1-1111', '10-1-1111',
        '2000', 1221, 1212);
    new ProjectItem(1
    ,'Surya', '2', 'Something on grid',
    '3', 'image', 'www.google.com',
    '10-1-1111', '10-1-1111',
    '2000', 1221, 1212);

    projectitemlist.add(projectItem);



    return projectitemlist;
///////////////jkbhbuibihb///////////////////////////////


  }





  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(

      drawer: getNavDrawer(context),

      /*appBar: new AppBar(
        title: new Text("Project List"),
        backgroundColor: Colors.black,

      ),*/
      body: new Container(child: FutureBuilder(
        future: _getUsers(),
        builder: (BuildContext context, AsyncSnapshot snapshot){

          if(snapshot.data == null ){

            return Container(

                child: Center(
                  // child: Text("Loading... :)"),
                  child: ColorLoader2(
                    color1: Colors.red,
                    color2: Colors.deepPurple,
                    color3: Colors.green,
                  ),
                ));


          }
          else{
            /*
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index){
                  return ListTile(
                    title: Text(snapshot.data[index].itemName),

                  );
                },
              );
              */
            return ListView.builder(

              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index){
                return Card(
                  margin: const EdgeInsets.only(left: 18.0, right: 18.0,bottom: 10.0,top: 20.0),
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),

                    onTap: () { Navigator.push(
                        context, new MaterialPageRoute(
                        builder: (context) => new ProjDetails(
                          projectItem: snapshot.data[index],))); },
                    child: new Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: new
                      ListTile(
                        title: Text(snapshot.data[index].project_name.toString().toUpperCase()),
                        leading: new CircleAvatar(
                          backgroundColor: Colors.black,
                          child: new Icon(
                              Icons.computer
                          ),
                        ),
                        trailing: Text("Points: "+snapshot.data[index].status.toString().toUpperCase()),



                      ),
                    ),
                  ),
                );
              },
            );

          }

        },
      ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:cia_flutter/ComponentDetails.dart';
import 'model/componentItem.dart';
import 'ColorLoader2.dart';
import 'drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
class NotificationList extends StatelessWidget {
  static const String routeName = "/notificationlist";

  @override
  Widget build(BuildContext context) {
    return new NotificationAllList();


  }}

class NotificationAllList extends StatefulWidget{
  @override
  _NotificationListState createState() => new _NotificationListState();
}
class _NotificationListState extends State<NotificationAllList> {
////////////////////////////////////////////////////////////////////////////////////////
  ///
  Future<List<ComponentItem>>  _getUsers() async {
    var data = await http.post('http://139.59.61.35/sufi/item/get');
    var jsonData =  json.decode(data.body);

    List<ComponentItem> componentitemlist = [];

    for (var component in jsonData){
      ComponentItem element = ComponentItem(
          component["item_name"],
          component["quantity"],
          component["image"],
          component["itemId"],
          component["specs"],
          component["category"],
          component["subCategory"],
          component["hsn"],
          component["modelId"],
          component["cost"],
          component["manufacturer"],
          component["description"],
          component["dataSheetLink"],
          component["locationCabinet"],
          component["locationCupboard"],
          component["vendorDetailsVendorId"],
          component["locationRoom"],
          component["url"],
          component["tutorialsLink"]);
      componentitemlist.add(element);
    }

    return componentitemlist;
  }
////////////////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      drawer: getNavDrawer(context),
      /*  appBar: new AppBar(
        title: new Text("Component List"),
        backgroundColor: Colors.black,

      ),*/
      body: new Container(
        child: FutureBuilder(
          future: _getUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot){

            if(snapshot.data == null ){

              return Container(

                child: Center(
                  //child: Text("Loading... :)"),
                  child: ColorLoader2(
                    color1: Colors.red,
                    color2: Colors.deepPurple,
                    color3: Colors.green,
                  ),
                ),
              );


            }
            else{/*
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
                          builder: (context) => new CompDetails(
                            componentItem: snapshot.data[index],))); },
                      child: new Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: new
                        ListTile(
                          title: Text(snapshot.data[index].itemName.toString().toUpperCase()),
                          leading: new CircleAvatar(
                            backgroundColor: Colors.black,
                            child: new Icon(
                                Icons.computer
                            ),
                          ),
                          trailing: Text("X  "+snapshot.data[index].quantity.toString().toUpperCase()),



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
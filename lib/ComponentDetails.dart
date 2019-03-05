import 'package:flutter/material.dart';
import 'model/componentItem.dart';



class CompDetails extends StatelessWidget {

  final ComponentItem componentItem;

  CompDetails({this.componentItem});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
       // title: componentItem.getItemName(),

     new Scaffold(
          appBar: new AppBar(
            title: new Text("More Details"),
            backgroundColor: Colors.black,

          ),
          body: new Container(

            child: new ListView(
              children: <Widget>[

                new  Image.network(componentItem.getimage(),
                  width: 150.0,
                  height: 150.0,),


                new ListTile(
                  title: Text("ITEM ID:     "+componentItem.getItemId().toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),),



                ),


                new ListTile(
                  title: Text("ITEM NAME:    "+componentItem.getItemName().toString(),
                    style: TextStyle(fontWeight: FontWeight.bold,
                        decorationStyle: TextDecorationStyle.dotted),
                  ),

                ),
                new ListTile(
                  title: Text("ITEM QUANTITY:     "+componentItem.getquantity().toString()),

                ),
                // new ListTile(
                //   title: Text(componentItem.geturll().toString()),
                // ),
                new ListTile(
                  title: Text("ITEM SPECIFICATION:      "+componentItem.getspecs().toString()),

                ),
                new ListTile(
                  title: Text("ITEM CATEGORY:     "+componentItem.getcategory().toString()),

                ),
                new ListTile(
                  title: Text("ITEM SUB-CATEGORY:     "+componentItem.getsubCategory().toString()),

                ),

                new ListTile(
                  title: Text("HSN:     "+componentItem.gethsn().toString()),

                ),
                new ListTile(
                  title: Text("COST:      "+componentItem.getcost().toString()),

                ),
                new ListTile(
                  title: Text("MANUFACTURER:      "+componentItem.getmanufacturer().toString()),

                ),
                new ListTile(
                  title: Text("DESCRIPTION:     "+componentItem.getdescription().toString()),

                ),
                new ListTile(
                  title: Text("MODEL-ID:    "+componentItem.getmodelid().toString()),

                ),
                new ListTile(
                  title: Text("DSL:   "+componentItem.getdsl().toString()),

                ),
                new ListTile(
                  title: Text("LOCATION CABINET:    "+componentItem.getlocc().toString()),

                ),
                new ListTile(
                  title: Text("LOCATION CUPBOARD:  "+componentItem.getloccp().toString()),

                ),
                new ListTile(
                  title: Text("LOCATION ROOM:  "+componentItem.getlocr().toString()),

                ),
                new ListTile(
                  title: Text("VENDER-ID:   "+componentItem.getvd().toString()),

                ),
                new ListTile(
                  title: Text("TUTORIALS LINK:   "+componentItem.gettut().toString()),

                ),

              ],
            ),
          ),
        );

  }
}

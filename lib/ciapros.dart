import 'package:flutter/material.dart';
import 'pros.dart';

class CiaPros extends StatelessWidget {
  PageController pageController = new PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 380.0,
      width: double.infinity,
      child: new PageView(
          controller: pageController,
          children: books.map((Pros pros) {
            return Padding(
              padding: EdgeInsets.all(10.0),
              child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: new BorderRadius.circular(10.0),
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                        color: Colors.black38,
                        blurRadius: 2.0,
                        spreadRadius: 1.0,
                        offset: new Offset(0.0, 2.0)),
                  ],
                ),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Container(
                        height: 220.0,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
                          child: new Image.asset(pros.asset, fit: BoxFit.cover),
                        )
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, bottom: 10.0, top: 10.0),
                      child: new Text(pros.title,
                          style: const TextStyle(fontSize: 20.0,color: Colors.black),
                          textAlign: TextAlign.right),
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                      child: new Text(pros.author,style: const TextStyle(fontSize: 15.0,color: Colors.black54),
                        textAlign: TextAlign.right),
                    ),
                    new Container(
                      margin: const EdgeInsets.all(10.0),
                      decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(40.0)),
                      child: new ClipRRect(
                        borderRadius: new BorderRadius.circular(20.0),
                        child: new MaterialButton(
                          minWidth: 70.0,
                          onPressed: () {
                            Navigator.push(
                                context, new MaterialPageRoute(
                                builder: (context) => new CiaProjectsList()));

                          },
                          color: Colors.black,
                          child: new Center(
                            child: new Text('Read More',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w500)
                              ,),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }
}


class CiaProjectsList extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      // title: componentItem.getItemName(),

      new Scaffold(
        appBar: new AppBar(
          title: new Text("DESCRIPTION"),
          backgroundColor: Colors.black,

        ),
        body: new Container(


          child: new ListView(
            children: <Widget>[

              /*new  Image.network(componentItem.getimage(),
                  width: 150.0,
                  height: 150.0,),*/
              new Image.asset("assets/images/forum.png",width: 200.0,height: 200.0,),
              new Divider(
                height: 1.0,
                color: Colors.red,
              ),
              new Text("some randome text"
                  "snnnsk"
                  "endkjandjn"
                  "amkdnmkdm"
                  "sssssssssssssssssssssssss"
                  "e"
                  ""
                  ""
                  ""
                  "e"
                  "w"
                  ""
                  "w"
                  "s"),
             

              new Divider(
                height: 1.0,
                color: Colors.red,
              ),
             


            ],
          ),
        ),
      );

  }
}

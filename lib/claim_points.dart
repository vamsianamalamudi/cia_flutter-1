import 'drawer.dart';
import 'dart:async';
import 'dart:convert';
import 'package:cia_flutter/drawer.dart';
import 'package:flutter/material.dart';
import 'Claimed.dart';
import 'package:http/http.dart' as http;

class ClaimPoints extends StatelessWidget {
  static const String routeName = '/claim';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        drawer: getNavDrawer(context),
        appBar: new AppBar(title: new Text("      ")),
        body: new Container(
          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: new Column(
            children: <Widget>[

              new TextField(

                decoration: InputDecoration(
                    hintText: "DOMAIN", labelText: 'DOMAIN'),
              ),
              new TextField(

                decoration: InputDecoration(
                    hintText: "URL", labelText: 'URL'),
              ),

              new TextField(

                decoration: InputDecoration(
                    hintText: "CLAIMED POINTS", labelText: 'CLAIMED POINTS'),
              ),
              new RaisedButton(
                onPressed: ()  {
                  Navigator.push(
                      context, new MaterialPageRoute(
                      builder: (context) => new Claimed()));
                },
                child: const Text("CLAIM"),
              )
            ],
          ),
        )
        );
  }
}


class Post {
  final String userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  Map toMap() {
    var map = new Map<String, dynamic>();
    map["userId"] = userId;
    map["title"] = title;
    map["body"] = body;

    return map;
  }
}

/////////////////////////////

Future<Post> createPost(String url, {Map body}) async {
  return http.post(url, body: body).then((http.Response response) {
    final int statusCode = response.statusCode;

    if (statusCode < 200 || statusCode > 400 || json == null) {
      throw new Exception("Error while fetching data");
    }
    return Post.fromJson(json.decode(response.body));
  });
}

// Call Web services


/////////////////////////////
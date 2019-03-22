import 'package:flutter/material.dart';
import 'drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:cia_flutter/ProjectList.dart';
import 'ciapros.dart';

const PrimaryColor = const Color(0xFF151026);

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        color: Colors.black26,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            new Hero(
                tag: 'image-hero',
                child: new Container(
                  margin: const EdgeInsets.only(bottom: 20.0),
                  child: new Image.asset('assets/images/logocia.png',
                      width: 200.0, height: 200.0, color: Colors.white),
                )),
            new Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: new Text('Communities. In. Atria.',
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w200)),
            ),
            new Container(
              height: 450.0,
              width: double.infinity,
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.only(topLeft: const Radius.circular(30.0), topRight: const Radius.circular(30.0)),
                color: Colors.white,
              ),
              child: new DefaultTabController(
                length: 3,
                child: new Column(
                  children: <Widget>[
                    new TabBar(
                      indicatorWeight: 3.0,
                      isScrollable: true,
                      labelColor: Colors.black87,
                      tabs: <Widget>[
                        new Tab(text: 'TALKS'),
                        new Tab(text: 'SEMINARS'),
                        new Tab(text: 'WORKSHOPS'),
                      ],
                    ),
                    new CiaPros(),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

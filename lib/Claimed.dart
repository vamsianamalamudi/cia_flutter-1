import 'package:flutter/material.dart';


class Claimed extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('App Name'),
      ),
      body:

      new Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
       child:  new Image.asset(
         'assets/images/ic_preview_1.png',
         fit: BoxFit.cover,
         height: double.infinity,
         width: double.infinity,
         alignment: Alignment.center,
         // height: 100.0,
       ),

      ),
    );
  }
}


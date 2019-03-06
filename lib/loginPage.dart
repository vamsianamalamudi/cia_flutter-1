import 'package:flutter/material.dart';
import 'package:cia_flutter/Token.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:cia_flutter/HomeScreen.dart';

class LoginPage extends StatefulWidget{

  static const String routeName = "/loginPage";

  @override
  _LoginPageSate createState()=>_LoginPageSate();
}
class _LoginPageSate extends State<LoginPage>{
  String _email;
  String _password;
  String token;
/*
  Map<String, String> body = {
    'username': 'sufian',
    'password': 'sufiboy',

  };*/

  Future<Token> _login() async {
    var url = "http://139.59.61.35/sufi/api/signin";

    Map<String, dynamic> body = {'username': 'sufian', 'password': 'sufiboy'};
print(body);
    var data = await http.post(url,body: json.encode(body),
                                headers:  {
                                  "Accept": "application/x-www-form-urlencoded",
                                  "Content-Type": "application/json"
                                },  encoding: Encoding.getByName("utf-8"));

    var jsonData =  json.decode(data.body);
    print("surya");
    print(jsonData['token']);
    token = jsonData['token'];


/*
    if (data.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      var jsonData =  json.decode(data.body);
      print("surya");
      print(jsonData);
      //return Login.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
*/

    // this is response



  }

  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return new Scaffold(

      // appBar: AppBar(
      //   title: Image(image:AssetImage("assets/img/login_logo.png",),height: 30.0,fit: BoxFit.fitHeight,),

      //   elevation: 0.0,

      //   centerTitle: true,
      //   backgroundColor: Colors.transparent,

      // ),
      body:
      ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            height: 400.0,
            width: 110.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.fitHeight),
              borderRadius: BorderRadius.only
                (
                  bottomLeft: Radius.circular(500.0),
                  bottomRight: Radius.circular(500.0)
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Center(
                  child: Form(
                    //key: formkey,
                    child: Center(
                      child: ListView(
                        shrinkWrap: true,
                        children: <Widget>[

                          _input("required email",false,"Email",'Enter your Email',(value) => _email = value),
                          SizedBox(width: 20.0,height: 20.0,),
                          _input("required password",true,"Password",'Password',(value) => _password = value),
                          new Padding(padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: OutlineButton(
                                              child: Text("Login "),
                                              onPressed:(){
                                          /*      try{
                                                  _login();
                                                  Navigator.push(
                                                    context, new MaterialPageRoute(
                                                    builder: (context) => new HomeScreen()));
                                                } catch (exception) {
                                                  print("Error Decoding Data (login): $exception");
                                                }*/
                                                Navigator.push(
                                                    context, new MaterialPageRoute(
                                                    builder: (context) => new HomeScreen()));
                                              }
                                          ),
                                          flex: 1,
                                        ),
                                        SizedBox(height: 18.0,width: 18.0,),

                                        SizedBox(height: 18.0,width: 18.0,),
                                        Expanded(
                                          flex: 1,
                                          child: OutlineButton(

                                             // child: Image(image: AssetImage("assets/img/google1.png"),height:28.0,fit: BoxFit.fitHeight),
                                              onPressed: (){

                                              }),
                                        )

                                      ],
                                    ),
                                    SizedBox(height: 15.0),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'New login with google?',
                                          style: TextStyle(fontFamily: 'Montserrat'),
                                        ),
                                        SizedBox(width: 5.0),
                                        InkWell(
                                          child: Text(
                                            'create new account',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.bold,
                                                decoration: TextDecoration.underline),
                                          ),
                                        )
                                      ],
                                    ),
                                    OutlineButton(
                                        child: Text("signup"),
                                        onPressed: (){
                                          Navigator.of(context).pushNamed('/signup');
                                        }),
                                    //   OutlineButton(
                                    //       child: Text("ui"),
                                    //       onPressed: (){
                                    //         Navigator.of(context).pushNamed('/userpage');
                                    //       })
                                  ],

                                ),

                              ),
                            ),),

                        ],

                      ),
                    ),
                  )
              ),
            ),
          ),
        ],
      ) ,
    );
  }
  Widget _input(String validation,bool ,String label,String hint, save ){

    return new TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
        ),

      ),
      obscureText: bool,
      validator: (value)=>
      value.isEmpty ? validation: null,
      onSaved: save ,

    );

  }


  @override
  initState() {

    super.initState();
    _login();




  }

}
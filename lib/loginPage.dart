import 'package:flutter/material.dart';
import 'package:cia_flutter/Token.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'simple_round_button.dart';

import 'package:cia_flutter/HomeScreen.dart';

class LoginPage extends StatefulWidget{

  static const String routeName = "/loginPage";



  @override
  _LoginPageSate createState()=>_LoginPageSate();
}
class _LoginPageSate extends State<LoginPage>{
  TextEditingController _controllerUsername = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();


  String _email;
  String _password;
  String token;
/*
  Map<String, String> body = {
    'username': 'sufian',
    'password': 'sufiboy',

  };*/

  Future<Token> _login(String username,String password) async {
    var url = "http://139.59.61.35/sufi/api/signin";

    Map<String, dynamic> body = {'username': '$username', 'password': '$password'};
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



    if (data.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      var jsonData =  json.decode(data.body);
      print("surya");
      print(jsonData);
      Navigator.pushReplacement(
          context, new MaterialPageRoute(
          /*builder: (context) => new HomeScreen(token: token,)*/
      ));

      //return Login.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }

    // this is response



  }



  @override
  Widget build(BuildContext context) {
    // Note: This is a GlobalKey<FormState>, not a GlobalKey<MyCustomFormState>!
    final _formKey = GlobalKey<FormState>();


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
            margin: EdgeInsets.all(30.0),
            //padding: EdgeInsets.all(10.0),
            height: 200.0,
            width: 110.0,
            decoration: BoxDecoration(
              image: DecorationImage(

                  image: AssetImage('assets/images/avengers.png'),
                  fit: BoxFit.fitHeight),
              borderRadius: BorderRadius.only
                (
                  bottomLeft: Radius.circular(100.0),
                  bottomRight: Radius.circular(100.0)
              ),
            ),
          ),
          Center(
            child: Text("AVENGERS INITIATIVE",style: TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: 30.0,
            ),),
          )
          ,
          Center(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Center(
                  child: Form(
                  //  key: _formKey,
                    child: Center(
                      child: ListView(
                        shrinkWrap: true,
                        children: <Widget>[

                          _input("required email",false,"Email",'Enter your Email',(value) => _email = "surya",_controllerUsername),
                          SizedBox(width: 20.0,height: 20.0,),
                          _input("required password",true,"Password",'Password',(value) => _password = "123",_controllerPassword),
                          new Padding(padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                                SimpleRoundButton(
                                                  backgroundColor: Color.fromRGBO(191, 51, 48, 1),
                                                  buttonText: Text("LOGIN",
                                                    style: TextStyle(
                                                        color: Colors.white
                                                    ),
                                                  ),
                                                  textColor: Colors.white,
                                                    onPressed:(){
                                                      print(_controllerUsername.text);
                                                      print(_controllerPassword.text);
                                                      _login(_controllerUsername.text, _controllerPassword.text);

                                                      /*      try{
                                                                        _login();
                                                                        Navigator.push(
                                                                        context, new MaterialPageRoute(
                                                                        builder: (context) => new HomeScreen()));
                                                                        } catch (exception) {
                                                                        print("Error Decoding Data (login): $exception");
                                                                      }*/

                                                    }
                                                ),
                                               /* OutlineButton(

                                                    child: Text("Login "),
                                                    onPressed:(){
                                                            print(_controllerUsername.text);
                                                            print(_controllerPassword.text);
                                                            _login(_controllerUsername.text, _controllerPassword.text);

                                                            *//*      try{
                                                                        _login();
                                                                        Navigator.push(
                                                                        context, new MaterialPageRoute(
                                                                        builder: (context) => new HomeScreen()));
                                                                        } catch (exception) {
                                                                        print("Error Decoding Data (login): $exception");
                                                                      }*//*

                                                                        }
                                                                      ),*/

                                                                    SizedBox(height: 0.0),
                                   /* Row(
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
                                    ),*/
                                  /*  OutlineButton(
                                        child: Text("signup"),
                                        onPressed: (){
                                          Navigator.of(context).pushNamed('/signup');
                                        }),*/
                                                /////////////////////////////////////////////////////////////
                                                SimpleRoundButton(
                                                    backgroundColor: Color.fromRGBO(191, 51, 48, 1),
                                                    buttonText: Text("SIGNUP",
                                                      style: TextStyle(
                                                          color: Colors.white
                                                      ),
                                                    ),
                                                    textColor: Colors.white,
                                                    onPressed:(){

                                                    }
                                                ),
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


  Widget _input(String validation,bool ,String label,String hint, save ,TextEditingController controller){

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
      controller: controller ,

    );

  }


  @override
  initState() {

    super.initState();
    //_login();




  }

}
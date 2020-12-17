

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//import 'dart:convert';

TextEditingController numController= TextEditingController();
TextEditingController passController= TextEditingController();
String mobile;
String password;

void authenticate(String mobile, String password){

  String myUrl =
      "https://mekvahan.com/api/android_intern_task";
  http.post(myUrl,
      headers: {
        'Accept': 'application/json',
        "Authorization": "Some token"},
      body:({
        "mobile": mobile,
        "password": password,
      })).then((response) {

    if((response.statusCode)==200)
    {print((response.body));}



  });

}






class Screen3 extends StatefulWidget {

  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {

  final TextEditingController numController= TextEditingController();
  final TextEditingController passController= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "Img/Bg.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[

              Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[

                  Image.asset("Img/Bg 2.3.png",),
                  Center(child: Image.asset("Img/object 3.png",)),
                ], ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                margin: EdgeInsets.only(right: 250.0),
                child: Text(

                  "LOGIN",style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.only(right: 205.0),
                child: Text("Enter your mobile no.",style: TextStyle(
                  fontSize: 15.0,

                ),),
              ),
              
              Container(
                padding: EdgeInsets.all(10.0),
                width: 380,
                height: 60.0,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: numController,
                  decoration: InputDecoration(
                     filled: true,
                      fillColor: Colors.white,

                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.only(right: 240.0),
                child: Text("Enter password",style: TextStyle(
                  fontSize: 15.0,

                ),),
              ),

              Container(
                padding: EdgeInsets.all(10.0),
                width: 380,
                height: 60.0,
                child: TextField(

                  controller: passController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              ButtonTheme(
                minWidth: 300.0,
                child: RaisedButton(
                  color: Colors.orange,


                  child: Text("Proceed",
                    style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  onPressed: (){

                    mobile=numController.text;
                    password=passController.text;
                    authenticate(mobile, password);
                    print(mobile);
                    print(password);

                  },
                ),
              ),

            ],
          ),),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internloginpage/screen_2.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "Img/Bg.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 550,
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      "Img/Bg 2.1.png",

//                    fit:BoxFit.fill,
                    ),
                    Positioned(
                        top: 360.0,
                        left: 20.0,
                        child: Text(
                          "HURRY!!",
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    Positioned(
                        top: 140.0,
                        left: 130,
                        child: Image.asset(
                          "Img/object 1.png",
                        )),
                    Positioned(
                        top: 400.0,
                        left: 20.0,
                        child: Text(
                          "HUNGER DON'T WAIT",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontStyle: FontStyle.italic,
                          ),
                        ))
                  ],
                ),
              ),
              ButtonTheme(
                minWidth: 300.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Screen2();
                        },
                      ),
                    );
                  },
                  color: Colors.orange,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        "Avail Best Offers & Discounts for You",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 10.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ButtonTheme(
                minWidth: 300.0,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  child: Text(
                    "Continue without Login",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              ButtonTheme(
                minWidth: 300.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Screen2();
                        },
                      ),
                    );
                  },
                  color: Colors.white,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Already a tiffinia member?",
                        style:
                            TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        " LOGIN",
                        style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400,color: Colors.orange),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

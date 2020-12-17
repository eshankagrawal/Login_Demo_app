import 'package:flutter/material.dart';
import 'package:internloginpage/screen_1.dart';
import 'package:animated_splash/animated_splash.dart';


//import 'package:internloginpage/screen_3.dart';
//import 'package:internloginpage/authenticate.dart';

//import 'package:internloginpage/screen_2.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:AnimatedSplash(
        imagePath: 'Img/Tiffinia_icon_small.png',
        home: Screen1(),
        duration: 2000,
        type: AnimatedSplashType.StaticDuration,
      ),
    );
  }
}


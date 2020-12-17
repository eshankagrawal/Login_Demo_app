
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internloginpage/screen_3.dart';
class Screen2 extends StatefulWidget {
@override
_Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
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
    child: Column(
      children: <Widget>[
        Container(

          child: Stack(
            children: <Widget>[
              Image.asset( "Img/Bg 2.2.png"),
            Positioned(
              top: 70.0,
              right: 140.0 ,
              child: Image.asset(
                "Img/object 2.png",
              ),
            )
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Container(
          margin: EdgeInsets.only(right: 230.0),
          child: Text(

            "LOGIN",style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),),
        ),
        ButtonTheme(

          minWidth: 300.0,
          child: RaisedButton(

            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Screen3();
                  },
                ),
              );
            },
            color: Colors.white,

            child:Container(
              padding: EdgeInsets.only(right: 90.0),
              child: Row(
                  mainAxisSize: MainAxisSize.min,
                children:<Widget>[
                  Image.asset("Img/icon _mobile.png",height: 20.0,
                  width: 20.0,),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text("Enter your mobile number",style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400
                ),),]
              ),
            ),
          ),
        ),
        ButtonTheme(
          minWidth: 330.0,
          child: RaisedButton(

            onPressed: (){},
            color: Colors.white,

            child: Container(
              padding: EdgeInsets.only(right: 100.0),
              child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children:<Widget>[
                    Image.asset("Img/icon _fb.png",height: 20.0,
                      width: 20.0,),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text("Continue with facebook",style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400
                    ),),]
              ),
            ),
          ),
        ),
        ButtonTheme(
          minWidth: 330.0,
          child: RaisedButton(

            onPressed: (){},
            color: Colors.white,

            child: Container(
              padding: EdgeInsets.only(right: 120.0),
              child: Row(

                  mainAxisSize: MainAxisSize.min,
                  children:<Widget>[
                    Image.asset("Img/icon _google.png",height: 20.0,
                      width: 20.0,),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text("Continue with Google",style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400
                    ),),]
              ),
            ),
          ),
        ),
        ButtonTheme(
          minWidth: 330.0,
          child: RaisedButton(

            onPressed: (){},
            color: Colors.white,

            child:Container(
              padding: EdgeInsets.only(right: 120.0),
              child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children:<Widget>[
                    Image.asset("Img/icon _mail.png",height: 20.0,
                      width: 20.0,),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text("Continue with E-mail",style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,

                    ),),]
              ),
            ),
          ),
        ),
         SizedBox(
           height: 25.0,
         ),
         Text("By Continuing,You Agree To Our"),
        Text("Terms of Service & Policy Service",style: TextStyle(
          decoration: TextDecoration.underline,
        ),),
      ],
    ),
  ),
);
}
}

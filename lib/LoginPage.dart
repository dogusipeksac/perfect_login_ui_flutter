import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  int _pageState=0;
  Color _backgroundColor=Colors.white;
  Color _headingColor=Color(0xFFB40284A);

  @override
  Widget build(BuildContext context) {

    switch(_pageState){
      case 0:
        _backgroundColor=Colors.white;
        _headingColor=Color(0xFFB40284A);
        break;
      case 1:
        _backgroundColor=Color(0xFFBD34C59);
        _headingColor=Colors.white;
        break;
      case 2:
        _backgroundColor=Color(0xFFBD34C59);
        _headingColor=Colors.white;
        break;
    }


    return AnimatedContainer(
      curve: Curves.fastLinearToSlowEaseIn,
      duration: Duration(
        milliseconds: 1000,
      ),
      color: _backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.only(top: 100),
                    child: Text(
                      "Learn Free",
                      style: TextStyle(color:_headingColor, fontSize: 28),
                    )),
                Container(
                  margin: EdgeInsets.all(32),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "We make learning easy. Join Tvac Studio to learn flutter for free on YouTube.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _headingColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(
              horizontal: 32,
            ),
            child: Center(child: Image.asset("assets/images/splash_bg.png")),
          ),
          Container(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  if(_pageState!=0){
                    _pageState=0;
                  }
                  else{
                    _pageState=1;
                  }

                });
              },
              child: Container(
                margin: EdgeInsets.all(40),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Center(
                    child: Text(
                  "Get starter",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xFFB40284A),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class PrimaryBtn extends StatefulWidget {

  final String btnText;
  PrimaryBtn({this.btnText});



  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFB40284A),
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text(widget.btnText,style: TextStyle(
            color: Colors.white,fontSize: 16)),
      ),
    );
  }
}



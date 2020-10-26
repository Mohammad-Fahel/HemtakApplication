import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class fillFormScreen2 extends StatefulWidget {
  @override
  _fillFormScreenState createState() => _fillFormScreenState();
}



class _fillFormScreenState extends State<fillFormScreen2> {
  Widget TextFieldEmpaty() {

    return Container(

      margin: EdgeInsets.symmetric(vertical: 5),
      color: Colors.white54,
      child: TextField(

      textCapitalization: TextCapitalization.sentences,
textAlign: TextAlign.right,
        autofocus: false,
        decoration: new InputDecoration(
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 3.0),
          ),
        ),
      ),
    );
  }

  Widget TextIt(String text) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitUp]);
    return Scaffold(

      body: Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage("assets/images/jordan.jpeg"),
                    fit: BoxFit.fill)),
          ),
          new BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: new Container(
              decoration:
                  new BoxDecoration(color: Colors.white.withOpacity(0.0)),
            ),
          ),
          SingleChildScrollView(

            child: Padding(
              padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20.0),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_sharp,
                        size: 50.0,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/images/shabab.jpg",
                      ),
                      radius: 90.0,
                    ),
                  ),
                  Center(
                    child: Text(
                      "البيانات التعريفية",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 3,
                  ),
                  SizedBox(height: 30.0),



                  TextIt('المؤسسة'),
                  TextFieldEmpaty(),
                  TextIt("أسم صاحب الارتباط"),
                  TextFieldEmpaty(),
                  TextIt('رقم هاتف'),
                  TextFieldEmpaty(),
                  TextIt('البريد الإلكتروني'),
                  TextFieldEmpaty(),
                  TextIt('مسمى وظيفي'),
                  TextFieldEmpaty(),
                  TextIt('اسم ضابط الارتباط'),
                  TextFieldEmpaty(),


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

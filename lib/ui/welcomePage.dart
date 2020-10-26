import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hemtak_app/ui/fillFormScreen.dart';
import 'package:hemtak_app/ui/signUpScreen.dart';
import 'package:hemtak_app/ui/loginScreen.dart';

import 'fillFormScreen2.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Widget _loginButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      },
      child: Container(
        width: 375,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Color(0xFFFFCDD2).withAlpha(100),
                  offset: Offset(2, 4),
                  blurRadius: 8,
                  spreadRadius: 2)
            ],
            color: Colors.white),
        child: Text(
          "تسجيل الدخول",
          style: TextStyle(fontSize: 20, color: Color(0xFFE53935)),
        ),
      ),
    );
  }

  Widget _signUpButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpScreen()));
      },
      child: Container(
        width: 375,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: Text(
          'اشترك الآن',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }

  Widget _fillForm() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => FillFormScreen()));
      },
      child: Container(
        width: 375,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: Text(
          "الانضمام كشريك",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }

  // Widget _background() {
  //   return Container(
  //       constraints: BoxConstraints.expand(),
  //       decoration: BoxDecoration(
  //           image: DecorationImage(
  //               image: AssetImage("assets/images/jordan.jpeg"),
  //               fit: BoxFit.cover)),
  //       child: ClipRRect(
  //         child: BackdropFilter(
  //           filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
  //           child: Container(
  //             alignment: Alignment.center,
  //             color: Colors.grey.withOpacity(0.1),
  //             child: Text(
  //               "Blur Background Image in Flutter",
  //               textAlign: TextAlign.center,
  //               style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
  //             ),
  //           ),
  //         ),
  //       ));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/jordan.jpeg"),
                fit: BoxFit.fill)),
        child: ClipRRect(
            child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 500),
              Image.asset(
                "assets/images/hemtak.png",
                height: 253,
                width: 235
              ),
              SizedBox(height: 75),
              _loginButton(),
              SizedBox(height: 10),
              _signUpButton(),
              SizedBox(height: 10),
              _fillForm()
            ],
          ),
        )),
      ),
    ));
  }
}

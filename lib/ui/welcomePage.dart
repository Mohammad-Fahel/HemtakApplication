import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hemtak_app/ui/partnerScreens.dart';
import 'package:hemtak_app/ui/signUpScreen.dart';
import 'package:hemtak_app/ui/signInScreen.dart';

import 'fillFormScreen2.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Widget _loginButton() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => SignInVolunteer()));
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
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => SignUpVolunteer()));
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
          "إنشاء حساب جديد",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }

  Widget _fillForm() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PartnerPage()));
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
          "خيار الشركاء",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/jordan.jpeg"),
              fit: BoxFit.fill)),
      child: ClipRRect(
          child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 6.5, sigmaX: 6.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/hemtak.png", height: 253, width: 235),
            SizedBox(height: 75),
            _loginButton(),
            SizedBox(height: 10),
            _signUpButton(),
            SizedBox(height: 10),
            _fillForm(),
            SizedBox(height: 20),
          ],
        ),
      )),
    ));
  }
}

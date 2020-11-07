import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hemtak_app/HomePage/HomePageOfVolunteer.dart';

class SignInVolunteer extends StatefulWidget {
  SignInVolunteer({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SignInVolunteerState createState() => _SignInVolunteerState();
}

class _SignInVolunteerState extends State<SignInVolunteer> {
  Widget _backButton() {
    return InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: <Widget>[
              Container(
                  padding: EdgeInsets.only(right: 20, top: 5, bottom: 10),
                  child: Icon(Icons.keyboard_arrow_left,
                      color: Colors.redAccent, size: 45))
            ])));
  }

  Widget _buildEmailTF() {
    return Column(textDirection: TextDirection.rtl, children: [
      Container(
        padding: EdgeInsetsDirectional.only(start: 10),
          alignment: Alignment.centerRight,
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
          height: 60,
          width: 375,
          child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                icon:  Icon(Icons.email,
                    color: Colors.black38),
                  border: InputBorder.none,
                  hintText: "عنوان البريد الإلكتروني")))
    ]);
  }

  Widget _buildPassowrdTF() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.rtl,
        children: [
          // Text("كلمة المرور", style: TextStyle(fontWeight: FontWeight.bold)),
          // SizedBox(height: 7.5),
          Container(
            padding: EdgeInsetsDirectional.only(start: 10),
              alignment: Alignment.centerLeft,
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
              height: 60,
              width: 375,
              child: TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.black, fontFamily: "OpenSans"),
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock,
                        color: Colors.black38),
                      border: InputBorder.none,
                      hintText: "كلمة المرور")))
        ]);
  }

  Widget _forgotPasswordField() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        width: 375,
        alignment: Alignment.centerRight,
        child: TextButton(
          child: Text(
              'هل نسيت كلمة المرور؟',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)
          ), ));
  }

  Widget _submitBtn() {
    return InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => HomePageVolunteer()));
        },
        child: Container(
          width: 375,
          padding: EdgeInsets.symmetric(vertical: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xfff44336), Color(0xffe57373)])),
          child: Text(
            'تسجيل الدخول كمتطوع',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ));
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
                color: Colors.white,
              ),
            ),
          ),
          Text('أو', style: TextStyle(color: Colors.white)),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 2),
                      blurRadius: 6)
                ],
                image: DecorationImage(image: logo))));
  }

  Widget _buildSocialBtnRow() {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _buildSocialBtn(() => print("Login with Facebook"),
              AssetImage("assets/logos/facebook.jpg")),
          _buildSocialBtn(() => print("Login with Google"),
              AssetImage("assets/logos/google.jpg")),
        ]));
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
        body: Container(
          child: Stack(
            children: <Widget>[
              Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/jordan.jpeg"),
                          fit: BoxFit.fill)),
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaY: 6.5, sigmaX: 6.5),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 20),
                            Image.asset(
                              "assets/images/hemtak.png",
                              height: 175,
                              width: 175,
                            ),
                            SizedBox(height: 60),
                            _buildEmailTF(),
                            SizedBox(height: 10),
                            _buildPassowrdTF(),
                            _forgotPasswordField(),
                            // _emailPasswordWidget(),
                            SizedBox(height: 20),
                            _submitBtn(),
                            _divider(),
                            _buildSocialBtnRow(),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  )),
              Positioned(top: 40, left: 0, child: _backButton()),
            ],
          ),
        ));
  }
}

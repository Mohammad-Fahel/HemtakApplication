import 'dart:ui';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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

  Widget _buildUserNameTF() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.rtl,
        children: [
          // Text("كلمة المرور",style: TextStyle(fontWeight: FontWeight.bold)),
          // SizedBox(height: 7.5),
          Container(
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
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                  obscureText: true,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.account_circle,
                          color: Colors.black38,
                          textDirection: TextDirection.rtl),
                      hintText: "الاسم الرباعي")))
        ]);
  }

  Widget _buildEmailTF() {
    return Column(textDirection: TextDirection.rtl, children: [
      // Text(
      //   "البريد الإلكتروني",
      //   style: TextStyle(fontWeight: FontWeight.bold),
      //   textAlign: TextAlign.right,
      // ),
      // SizedBox(height: 7.5),
      Container(
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
              textAlign: TextAlign.right,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black, fontFamily: "OpenSans"),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.email,
                      color: Colors.black38, textDirection: TextDirection.rtl),
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
                  textAlign: TextAlign.right,
                  obscureText: true,
                  style: TextStyle(color: Colors.black, fontFamily: "OpenSans"),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.lock,
                          color: Colors.black38,
                          textDirection: TextDirection.rtl),
                      hintText: "كلمة المرور")))
        ]);
  }

  Widget _buildPhoneNumberTF() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.rtl,
        children: [
          // Text(
          //   "رقم التواصل",
          //   style: TextStyle(fontWeight: FontWeight.bold),
          //   textAlign: TextAlign.right,
          // ),
          // SizedBox(height: 7.5),
          Container(
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
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.phone,
                  style: TextStyle(color: Colors.black, fontFamily: "OpenSans"),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.phone,
                          color: Colors.black38,
                          textDirection: TextDirection.rtl),
                      hintText: "رقم جوال")))
        ]);
  }

  Widget _buildIDNumberTF() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.rtl,
        children: [
          // Text("الرقم الوطني", style: TextStyle(fontWeight: FontWeight.bold)),
          // SizedBox(height: 7.5),
          Container(
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
              child: TextFormField(
                  textAlign: TextAlign.right,
                  obscureText: true,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.person,
                          color: Colors.black38,
                          textDirection: TextDirection.rtl),
                      hintText: "الرقم الوطني")))
        ]);
  }

  Widget _submitBtn() {
    return Container(
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
        'اشترك الآن',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: AlignmentDirectional.center,
            width: MediaQuery.of(context).size.width,
            child: Stack(children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/jordan.jpeg"),
                          fit: BoxFit.fill)),
                  child: ClipRRect(
                      child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaY: 7.5, sigmaX: 7.5),
                          child: SingleChildScrollView(
                              child: Column(children: <Widget>[
                                SizedBox(height: 20),
                            Image.asset(
                              "assets/images/hemtak.png",
                              height: 175,
                              width: 175,
                            ),
                            SizedBox(width: 600, height: 30),
                            _buildUserNameTF(),
                            SizedBox(height: 10),
                            _buildEmailTF(),
                            SizedBox(height: 10),
                            _buildIDNumberTF(),
                            SizedBox(height: 10),
                            _buildPhoneNumberTF(),
                            SizedBox(height: 10),
                            _buildPassowrdTF(),
                            SizedBox(height: 40),
                            _submitBtn(),
                            SizedBox(height: 100),
                          ]))))),
              Positioned(top: 30, left: 0, right: 50, child: _backButton())
            ])));
  }
}

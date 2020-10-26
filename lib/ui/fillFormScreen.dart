import 'dart:ui';

import 'package:flutter/material.dart';

class FillFormScreen extends StatefulWidget {
  @override
  _FillFormScreenState createState() => _FillFormScreenState();
}

class _FillFormScreenState extends State<FillFormScreen> {

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
  Widget _buildCompanyNameTF() {
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

  Widget _buildPhoneNumberTF() {
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

  Widget _buildEmailAdressTF() {
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

  Widget _buildUserTF() {
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

  Widget _buildNameTF() {
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
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
          child: Stack(
            children: <Widget>[
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
                                SizedBox(width: 600),
                                SizedBox(height: 20),
                                Image.asset(
                                  "assets/images/hemtak.png",
                                  height: 175,
                                  width: 175,
                                ),
                                SizedBox(height: 30),
                                _buildCompanyNameTF(),
                                SizedBox(height: 10),
                                _buildUserNameTF(),
                                SizedBox(height: 10),
                                _buildPhoneNumberTF(),
                                SizedBox(height: 10),
                                _buildNameTF(),
                                SizedBox(height: 10),
                                _buildEmailAdressTF(),
                                SizedBox(height: 10),
                                _buildUserTF(),
                                SizedBox(height: 20),
                                _submitBtn(),
                                SizedBox(height: 20),
                              ]))))),
              Positioned(top: 40, left: 0, child: _backButton()),
            ],
          ),
        ));
  }
}

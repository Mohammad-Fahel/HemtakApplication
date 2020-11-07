// app bar selver

import 'package:flutter/material.dart';
import 'package:hemtak_app/HomePage/spending.dart';
import 'package:hemtak_app/HomePage/widgetCards.dart';
import 'package:hemtak_app/HomePage/widgetCards.dart';
import 'package:hemtak_app/HomePage/spending.dart';

class HomePageVolunteer extends StatefulWidget {
  final String header;

  HomePageVolunteer({Key key, this.header}) : super(key: key);

  @override
  _HomePageVolunteerState createState() => _HomePageVolunteerState();
}

class _HomePageVolunteerState extends State<HomePageVolunteer> {
  Widget _eventCard() {
    return GestureDetector(
      onTap: () => print("hello"),
      child: Container(
        height: 110,
        width: (MediaQuery.of(context).size.width) - 30,
        child: ListView(
          primary: false,
          children: <Widget>[
            Container(
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2, 4),
                        blurRadius: 10,
                        spreadRadius: 3)
                  ],
                  color: Colors.white),
              child: Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 10),
                  Image.asset(
                    "assets/images/volunteer5.5.png",
                    width: 75,
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "عنوان الفعالية",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "شرح عن محتوى الفعالية",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Container(height: 70, width: 1.0, color: Colors.black),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on, size: 20),
                          SizedBox(width: 10),
                          Text("المكان - الحي"),
                        ],
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.date_range, size: 20),
                          SizedBox(width: 10),
                          Text("تاريخ الفعالية"),
                        ],
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.access_time_outlined, size: 20),
                          SizedBox(width: 10),
                          Text("توقيت الحدث"),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _mainStatistc(String name, String point){
    return Container(
      width: 140,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.green[200],
              blurRadius: 5,
              spreadRadius: 3)
        ],
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            Text(point,
              style: TextStyle(
                  fontSize: 17.5,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(icon: Icon(Icons.menu, color: Colors.black)),
            title: Text("مبادرات",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    fontSize: 23)),
            centerTitle: true,
            actions: [
              IconButton(icon: Icon(Icons.more_vert, color: Colors.black)),
            ]),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * .400,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 20, left: 30, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.2, 0.5, 0.9],
                    colors: [
                      Colors.red[200],
                      Colors.red[300],
                      Colors.red[400],
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "تصفح المبادرات التطوعية",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 34.0,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "فلترة المبادرات التطوعية",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _mainStatistc("الترتيب المحلي", "المركز العاشر"),
                        SizedBox(width: 50),
                        _mainStatistc("النقاط المكتسبة", "٧٥ نقطة"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              _eventCard(),
              _eventCard(),
              _eventCard(),
              _eventCard(),
              _eventCard(),
            ],
          ),
        ));
  }
}

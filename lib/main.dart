import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hemtak_app/ui/welcomePage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Demo",
        debugShowCheckedModeBanner: false,
        home: MyHomePage());
  }
}

// loading Screen classes
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => WelcomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.fill)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/hemtak.png",
                height: 240,
                width: 240,
                alignment: AlignmentDirectional.center,
              ),
              Text("نوّرت..",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              SizedBox(height: 100),
              Image.asset("assets/images/loader.gif",
                  alignment: AlignmentDirectional.bottomEnd,)
            ],
          )
    );

  }
}

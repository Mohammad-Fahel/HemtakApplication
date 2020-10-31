import 'package:flutter/material.dart';


class HomePageVolunteer extends StatefulWidget {
  @override
  _HomePageVolunteerState createState() => _HomePageVolunteerState();
}

class _HomePageVolunteerState extends State<HomePageVolunteer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: IconButton(icon: Icon(Icons.menu,color: Colors.white)),
        title: Text("مبادرات", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.more_vert,color: Colors.white)),
        ]
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Image.asset("assets/images/jordan.jpeg",width: 500,height: 120,),
            ListView()
           ],
        ),
      ),
    );
  }
}

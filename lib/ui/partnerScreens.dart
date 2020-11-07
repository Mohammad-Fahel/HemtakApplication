import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:hemtak_app/ui/welcomePage.dart';
import 'package:ndialog/ndialog.dart';

// This page appears ones user click on "خيار الشركاء" button
class PartnerPage extends StatefulWidget {
  @override
  _PartnerPageState createState() => _PartnerPageState();
}

class _PartnerPageState extends State<PartnerPage> {
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

  Widget _signInButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignInPartner()));
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
          " تسجيل الدخول كشريك",
          style: TextStyle(fontSize: 20, color: Color(0xFFE53935)),
        ),
      ),
    );
  }

  Widget _signUpButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpPartner()));
      },
      child: Container(
        width: 375,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            border: Border.all(color: Colors.white, width: 2)),
        child: Text(
          "إنشاء حساب شريك",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/jordan.jpeg"),
                    fit: BoxFit.fill)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6.6, sigmaY: 6.6),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Image.asset("assets/images/hemtak.png",
                      height: 253, width: 235),
                  SizedBox(height: 75),
                  _signInButton(),
                  SizedBox(height: 10),
                  _signUpButton()
                ],
              ),
            ),
          ),
          Positioned(top: 40, left: 0, child: _backButton()),
        ],
      ),
    );
  }
}

// This page appears ones user click on "تسجيل الدخول كشريك" button
class SignInPartner extends StatefulWidget {
  @override
  _SignInPartnerState createState() => _SignInPartnerState();
}

class _SignInPartnerState extends State<SignInPartner> {
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
              textAlign: TextAlign.right,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  icon: Icon(Icons.email, color: Colors.black38),
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
                  textAlign: TextAlign.right,
                  obscureText: true,
                  style: TextStyle(color: Colors.black, fontFamily: "OpenSans"),
                  decoration: InputDecoration(
                      icon: Icon(Icons.lock, color: Colors.black38),
                      border: InputBorder.none,
                      hintText: "كلمة المرور")))
        ]);
  }

  Widget _forgotPasswordField() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        width: 375,
        alignment: Alignment.centerRight,
        child: Text('هل نسيت كلمة المرور؟',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white)));
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
        'تسجيل الدخول كشريك',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
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
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      child: Stack(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
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

// This page appears ones user click on "إنشاء حساب شريك" button
class SignUpPartner extends StatefulWidget {
  @override
  _SignUpPartnerState createState() => _SignUpPartnerState();
}

class _SignUpPartnerState extends State<SignUpPartner> {
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

  Widget _buildWidgetTF(String nameOfWidget, IconData icon) {
    return Container(
      padding: EdgeInsetsDirectional.only(start: 10),
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
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              icon: Icon(icon, color: Colors.black38),
                border: InputBorder.none,
                hintText: nameOfWidget)));
  }

  int counter = 0;
  List _partnership = ["قطاع حكومي", "قطاع خاص", "مجتمع مدني", "منظمات"];
  String _currentPartner;
  List<DropdownMenuItem<String>> _dropDownMenuItemsPartner;

  List _cities = [
    "عمان",
    "الزرقاء",
    "إربد",
    "الكرك",
    "البلقاء",
    "الطفيلة",
    "معان",
    "المفرق",
    "العقبة",
    "مادبا",
    "عجلون",
    "جرش",
    "الكرك"
  ];
  String _currentCity;
  List<DropdownMenuItem<String>> _dropDownMenuItemsCity;

  @override
  void initState() {
    _dropDownMenuItemsCity = getDropDownMenuItemsLocation();
    _dropDownMenuItemsPartner = getDropDownMenuItemsPartner();
    if (counter == 0)
      _currentCity = _dropDownMenuItemsCity[0].value;
    else
      _currentPartner = _dropDownMenuItemsPartner[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItemsLocation() {
    List<DropdownMenuItem<String>> itemsCity = new List();
    for (String city in _cities)
      itemsCity.add(new DropdownMenuItem(value: city, child: new Text(city)));
    return itemsCity;
  }

  List<DropdownMenuItem<String>> getDropDownMenuItemsPartner() {
    List<DropdownMenuItem<String>> itemsPartner = new List();
    for (String partner in _partnership)
      itemsPartner
          .add(new DropdownMenuItem(value: partner, child: new Text(partner)));
    return itemsPartner;
  }

  void changedDropDownItemLocation(String selected) {
    setState(() {
      _currentCity = selected;
    });
  }

  void changedDropDownItemPartner(String selected) {
    setState(() {
      _currentPartner = selected;
    });
  }

  Widget _buildSingleChoiceLocationTF(
      String nameOfWidget, IconData icon, int count) {
    counter = count;
    return Container(
      padding: EdgeInsetsDirectional.only(start: 10),
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          textDirection: TextDirection.rtl,
          children: <Widget>[
            Icon(icon, color: Colors.grey),
            SizedBox(width: 15),
            Text(nameOfWidget,
                style: TextStyle(color: Colors.grey[700], fontSize: 15)),
            SizedBox(width: 115),
            Center(
              child: DropdownButton(
                itemHeight: 70,
                style: TextStyle(color: Colors.redAccent),
                value: _currentCity,
                items: _dropDownMenuItemsCity,
                onChanged: changedDropDownItemLocation,
              ),
            )
          ],
        ));
  }

  Widget _buildSingleChoicePartnerTF(
      String nameOfWidget, IconData icon, int count) {
    counter = count;
    return Container(
      padding: EdgeInsetsDirectional.only(start: 10),
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
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Icon(icon, color: Colors.grey),
              SizedBox(width: 15),
              Text(nameOfWidget,
                  style: TextStyle(color: Colors.grey[700], fontSize: 15)),
              SizedBox(width: 150),
              Center(
                child: DropdownButton(
                  style: TextStyle(color: Colors.redAccent),
                  value: _currentPartner,
                  items: _dropDownMenuItemsPartner,
                  onChanged: changedDropDownItemPartner,
                ),
              )
            ]));
  }

  Widget _submitBtn() {
    return FlatButton(
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
          'اشترك الآن',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      onPressed: () {
        NAlertDialog(
          title: Text(
            "تم إنشاء حسابك بنجاح",
            textAlign: TextAlign.right,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: Text("هل تود تسجيل الدخول؟",
              textAlign: TextAlign.right,
              style: TextStyle(fontWeight: FontWeight.w300)),
          actions: [
            FlatButton(
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => SignInPartner())),
              child: Text("موافق", style: TextStyle(color: Colors.redAccent)),
            ),
            FlatButton(
                onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => WelcomePage())),
                child:
                    Text("إلغاء", style: TextStyle(color: Colors.redAccent))),
          ],
          blur: 2,
        ).show(context);
      },
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
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/jordan.jpeg"),
                      fit: BoxFit.fill)),
              child: ClipRRect(
                  child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaY: 6.5, sigmaX: 6.5),
                      child: SingleChildScrollView(
                          child: Column(children: <Widget>[
                        SizedBox(height: 20),
                        Image.asset(
                          "assets/images/hemtak.png",
                          height: 175,
                          width: 175,
                        ),
                        SizedBox(height: 30),
                        _buildWidgetTF("اسم المؤسسة", Icons.apartment),
                        SizedBox(height: 10),
                        _buildWidgetTF("رقم السجل التجاري", Icons.work),
                        SizedBox(height: 10),
                        _buildSingleChoiceLocationTF(
                            "مكان تواجد المقر الرئيسي", Icons.location_on, 0),
                        SizedBox(height: 10),
                        _buildSingleChoicePartnerTF(
                            "صفة الشراكة", Icons.work, 1),
                        SizedBox(height: 10),
                        _buildWidgetTF("رقم الهاتف", Icons.phone),
                        SizedBox(height: 10),
                        _buildWidgetTF("البريد الإلكتروني", Icons.email),
                        SizedBox(height: 10),
                        _buildWidgetTF("كلمة المرور", Icons.vpn_key),
                        SizedBox(height: 10),
                        _buildWidgetTF("تأكيد كلمة المرور", Icons.vpn_key),
                        SizedBox(height: 40),
                        _submitBtn(),
                        SizedBox(height: 20),
                      ]))))),
          Positioned(top: 40, left: 0, child: _backButton()),
        ],
      ),
    ));
  }
}

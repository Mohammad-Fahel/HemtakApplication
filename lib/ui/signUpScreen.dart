import 'dart:ui';
import 'package:hemtak_app/ui/signInScreen.dart';
import 'package:hemtak_app/ui/welcomePage.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ndialog/ndialog.dart';

class MultipleNotifier extends ChangeNotifier {
  List<String> _selectedItems;

  MultipleNotifier(this._selectedItems);

  List<String> get selectedItems => _selectedItems;

  bool isHaveItem(String value) => _selectedItems.contains(value);

  addItem(String value) {
    if (!isHaveItem(value)) {
      _selectedItems.add(value);
      notifyListeners();
    }
  }

  removeItem(String value) {
    if (isHaveItem(value)) {
      _selectedItems.remove(value);
      notifyListeners();
    }
  }
}

class SignUpVolunteer extends StatefulWidget {
  @override
  _SignUpVolunteerState createState() => _SignUpVolunteerState();
}

class _SignUpVolunteerState extends State<SignUpVolunteer> {
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
      alignment: AlignmentDirectional.center,
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
            decoration: InputDecoration(
              icon: Icon(icon, color: Colors.black38),
                border: InputBorder.none,
                hintText: nameOfWidget)));
  }

  List _myActivities;
  String _myActivitiesResult;
  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _myActivities = [];
    _myActivitiesResult = '';
  }

  _saveForm() {
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      setState(() {
        _myActivitiesResult = _myActivities.toString();
      });
    }
  }

  Widget multipleChoice() {
    return Container(
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
        width: 375,
        // child: MultiSelectFormField(
        child: Column(
            textDirection: TextDirection.rtl,
            verticalDirection: VerticalDirection.down,
            children: [
              MultiSelectFormField(
                autovalidate: false,
                chipBackGroundColor: Colors.red[100],
                checkBoxActiveColor: Colors.redAccent,
                dialogShapeBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                title: Text("ما هي فئات الأعمال التطوعية المفضلة لديك؟",
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 17,
                        fontWeight: FontWeight.w300),
                    textDirection: TextDirection.rtl),
                dataSource: [
                  {
                    "display": "الجانب الرياضي والصحي  ",
                    "value": "الجانب الرياضي والصحي",
                  },
                  {
                    "display": "الجانب العلمي والعملي  ",
                    "value": "الجانب العلمي والعملي",
                  },
                  {
                    "display": "الجانب الوظيفي والمهاري  ",
                    "value": "الجانب الوظيفي والمهاري",
                  },
                  {
                    "display": "الجانب الإرشادي والتطوعي  ",
                    "value": "الجانب الإرشادي والتطوعي",
                  },
                  {
                    "display": "الجانب البيئي والصحي  ",
                    "value": "الجانب البيئي والصحي",
                  },
                ],
                required: true,
                textField: 'display',
                valueField: 'value',
                okButtonLabel: 'موافق',
                cancelButtonLabel: 'إلغاء',
                hintWidget: Text(''),
                initialValue: _myActivities,
                onSaved: (value) {
                  if (value == null) return;
                  setState(() {
                    _myActivities = value;
                  });
                },
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
                  MaterialPageRoute(builder: (context) => SignInVolunteer())),
              child: Text("موافق", style: TextStyle(color: Colors.redAccent)),
            ),
            FlatButton(
                onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => WelcomePage())),
                child: Text("إلغاء", style: TextStyle(color: Colors.redAccent))),

          ],
          blur: 2,
        ).show(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: AlignmentDirectional.center,
            child: Stack(children: <Widget>[
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
                            SizedBox(height: 60),
                            _buildWidgetTF("الاسم الرباعي", Icons.person),
                            SizedBox(height: 10),
                            _buildWidgetTF(
                                "الرقم الوطني", Icons.credit_card_rounded),
                            SizedBox(height: 10),
                            _buildWidgetTF("مكان الإقامة", Icons.location_on),
                            SizedBox(height: 10),
                            _buildWidgetTF(
                                "عنوان البريد الالكتروني", Icons.email),
                            SizedBox(height: 10),
                            _buildWidgetTF("رقم الجوال", Icons.phone),
                            SizedBox(height: 10),
                            _buildWidgetTF("كلمة المرور", Icons.vpn_key),
                            SizedBox(height: 10),
                            _buildWidgetTF("تأكيد كلمة المرور", Icons.vpn_key),
                            SizedBox(height: 10),
                            multipleChoice(),
                            SizedBox(height: 40),
                            _submitBtn(),
                            SizedBox(height: 20),
                          ]))))),
              Positioned(top: 40, left: 0, child: _backButton()),
            ])));
  }
}

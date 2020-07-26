import 'package:flutter/material.dart';
import 'package:my_flutter_app/data/CustomTheme.dart';
import 'package:my_flutter_app/data/TokenData.dart';
import 'package:my_flutter_app/services/TokenService.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:my_flutter_app/services/getCustomTheme.dart';
import 'package:my_flutter_app/screens/home.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Future<TokenData> _futureToken;

  CustomTheme _customTheme = new CustomTheme(
      primaryColor: Colors.grey,
      title: 'assets/images/logo.png',
      appName: 'KTW Shop',
      slaveColor: Colors.grey,
      anchorColor: Colors.grey);

  @override
  void initState() {
    super.initState();

    fetchCustomTheme().then((value) => setState(() {
          _customTheme = value;
        }));
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = new GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.contain,
          height: 38,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(15, 10, 15, 0),
        child: Form(
          key: _formKey,
          child: Column(children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "เข้าสู่ระบบ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "อีเมล์",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    AntDesign.user,
                    color: Colors.grey,
                  ),
                  hintText: 'อีเมล์',
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.grey[300],
                      width: 1.0,
                    ),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(8, 8, 8, 8)),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "รหัสผ่าน",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    AntDesign.key,
                    color: Colors.grey,
                  ),
                  hintText: 'รหัสผ่าน',
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.grey[300],
                      width: 1.0,
                    ),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(8, 8, 8, 8)),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: RaisedButton(
                  color: _customTheme.primaryColor,
                  child: Text(
                    "เข้าสู่ระบบ",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    goHomePage();
                  }),
            ),

            // SizedBox(
            //   height: 10,
            // ),
            // SizedBox(
            //   height: 40,
            //   width: double.infinity,
            //   child: RaisedButton(
            //       color: Colors.green,
            //       child: Text(
            //         "ลงทะเบียนเข้าใช้งาน",
            //         style: TextStyle(color: Colors.white),
            //       ),
            //       onPressed: () {
            //         //print(context.token);
            //       }),
            // ),

            SizedBox(
              height: 10,
            ),
            SizedBox(
              // alignment: Alignment.center,
              height: 40,
              width: double.infinity,
              child: OutlineButton(
                  textColor: Color(0xff2468ad),
                  borderSide: BorderSide(
                      color: Colors.blueGrey,
                      width: 1.0,
                      style: BorderStyle.none),
                  child: Text("ลืมรหัสผ่าน"),
                  onPressed: () {
                    //print(context.token);
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: RaisedButton(
                  color: Colors.grey[300],
                  child: Text("เข้าสู่ระบบภายหลัง"),
                  onPressed: () {
                    setState(() {
                      //_futureToken = fetchBasicToken();
                      goHomePage();
                    });
                  }),
            ),
          ]),
        ),
      ),
    );
  }

  goHomePage() {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new Home()),
    );
  }
}

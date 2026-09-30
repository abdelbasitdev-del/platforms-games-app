import 'package:flutter/material.dart';
import 'package:my_first/screena.dart';
import 'package:my_first/sh.dart';
import 'package:shared_preferences/shared_preferences.dart';

// الصفحة البتفحص هل سجل قبل كدا
class CheckLogin extends StatefulWidget {
  @override
  _CheckLoginState createState() => _CheckLoginState();
}

class _CheckLoginState extends State<CheckLogin> {
  @override
  void initState() {
    super.initState();
    checkFirstTime();
  }

  checkFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstTime = prefs.getBool('isFirstTime') ?? true; // أول مرة true

    if (isFirstTime) {
      // أول مرة افتح تسجيل الدخول
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginScreen()));
    } else {
      // سجل قبل كدا وديهو الصفحة الرئيسية
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => Sha()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}

import 'dart:async';
// import 'package :day8_night_new/ui_view/page_home.dart';
import 'package:flutter/material.dart';
import 'page_login.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    startTimer();
    super.initState();
  }
  @override
  Widget build( BuildContext context) {
    return Container (
      child: Center (
        child: Image.asset( "assets/icon/icon.png" ),
      ),
    );
  }
  Future < Timer > startTimer() async {
    return Timer ( Duration (seconds: 3 ), onDone);
  }
  void onDone() {
    Navigator .of(context). pushReplacement ( MaterialPageRoute (
        builder: (context) => PageLogin()
    ));
  }
}
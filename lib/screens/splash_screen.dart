import 'package:flutter/material.dart';

import 'layout_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    getScreen();
    // TODO: implement initState
    super.initState();
  }

  getScreen() async {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          (context),
          MaterialPageRoute(
            builder: (context) {
              return LayoutScreen();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Text(
          'WELCOME',
          style: TextStyle(
              fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

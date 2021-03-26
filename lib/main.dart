import 'dart:async';
import 'package:flutter/material.dart';
import 'login_register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {'login': (context) => LoginRegister()},
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void startTime() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('login');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/zalo123.png'), fit: BoxFit.cover)),
        child: Center(
          child: Image.asset(
            'assets/zalo123.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ),
      ),
    );
  }
}

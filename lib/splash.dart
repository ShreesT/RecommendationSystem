import 'package:flutter/material.dart';
import 'dart:async';
import 'FrontPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 3),
          () =>
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => FrontPage()),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Image.asset('assets/logo.jpeg',fit:BoxFit.cover),


        )
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Text('Welcome to the Login Screen!'),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'home.dart'; // Import your home page or replace with the appropriate path

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
    );
  }
}

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'assets/start.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),

          // Login Form
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10,10,10,10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                  width:300,
                  // Username TextField
                    child:Column(
                    children: [
                      TextField(
                      decoration: InputDecoration(
                      labelText: 'Username',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),

                  SizedBox(height: 16.0),

                  // Password TextField
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  ],
                    ),
                  ),
                  SizedBox(height: 32.0),

                  // Login Button
                  ElevatedButton(
                    onPressed: () {
                      // Add your login logic here
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => home()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    child: Text('Login'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FrontPage(),
    );
  }
}

class FrontPage extends StatefulWidget {
  @override
  FrontPageState createState() => FrontPageState();
}

class FrontPageState extends State<FrontPage> {
  final List<String> images = [
    'assets/start1.webp', // Replace with your image paths
    'assets/start2.jpeg',
    'assets/start3.jpeg',
  ];

  final List<String> texts = [
    'Welcome to Nutricion!\nA diet planning app',
    'Explore healthy recipes and meal plans',
    'Achieve your fitness goals with Nutricion',
  ];

  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
        // Background
        Container(
        color: Colors.lightGreen, // Background color
      ),

          // Carousel Slider
          Center(
            child: CarouselSlider(
              options: CarouselOptions(
                // height: MediaQuery.of(context).size.height * 0.8, // 80% of screen height
                height: 450,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3), // Adjust as needed
                autoPlayAnimationDuration: Duration(milliseconds: 800), // Adjust as needed
                autoPlayCurve: Curves.fastOutSlowIn,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              items: images.map((image) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      // width: currentIndex ==  2  ? 200 : MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0), // Adjusted margin
                      child: Image.asset(
                        image,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),




          // Image (you can replace this with your app logo)
      // Center(
      //   child: Container(
      //    width: 300,
      //     height: 400, // Adjusted height to cover only a portion
      //     child: Image.asset(
      //       'assets/start.webp',
      //     // fit: BoxFit.cover,
      //     ),
      //   ),
      // ),

          // Text Overlay
          Padding(
            padding: const  EdgeInsets.only(left:55),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60.0), // Adjusted height to bring the text down

                Text(
                  texts[currentIndex],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),

                Spacer(),

                // "Get Started" Button
                Container(
                  alignment:Alignment.center,
                  margin:EdgeInsets.only(bottom: 30) ,
                  child:ElevatedButton(
                   onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => login()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  child: Text('Get Started'),
                ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




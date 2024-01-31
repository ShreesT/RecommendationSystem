import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
    );
  }
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Plan'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications icon tap
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Handle settings icon tap
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.green, // Green background color
        child: Column(
          children: [
            // Smaller Carousel Slider with Green Container
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                color: Colors.green, // Green container background
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 150.0, // Adjusted height
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                  ),
                  items: [
                    // Add your calendar items here
                    Container(
                      color: Colors.white, // White item background
                      child: Center(child: Text('Today', style: TextStyle(color: Colors.black))),
                    ),
                    Container(
                      color: Colors.white, // White item background
                      child: Center(child: Text('<', style: TextStyle(color: Colors.black))),
                    ),
                    Container(
                      color: Colors.white, // White item background
                      child: Center(child: Text('>', style: TextStyle(color: Colors.black))),
                    ),
                  ],
                ),
              ),
            ),

            // Full-width White Cards with Padding
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                color: Colors.white, // White card background
                height: 100.0,
                child: Center(child: Text('KCal')),
              ),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                color: Colors.white, // White card background
                height: 100.0,
                child: Center(child: Text('Calorie Counter')),
              ),
            ),

            // Two White Cards Side by Side with Padding
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white, // White card background
                      height: 100.0,
                      child: Center(child: Text('Steps')),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Container(
                      color: Colors.white, // White card background
                      height: 100.0,
                      child: Center(child: Text('Activity')),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,  color: Colors.grey),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, color: Colors.grey),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite ,color: Colors.grey),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

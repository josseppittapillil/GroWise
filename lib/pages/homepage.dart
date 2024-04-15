//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:growise/pages/book.dart';
import 'package:growise/pages/newsletter.dart';
import 'package:growise/pages/location.dart';
import 'package:growise/pages/notif.dart';
import 'Market.dart';

import 'package:fancy_bottom_navigation_plus/fancy_bottom_navigation_plus.dart';
// import 'package:growise/pages/home.dart';

class BottomNavExample extends StatefulWidget {
  const BottomNavExample({Key? key}) : super(key: key);

  @override
  _BottomNavExampleState createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Homepage(),
    AppointmentStatusPage(),
    const Market(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: FancyBottomNavigationPlus(
        circleColor: Colors.green,
        barBackgroundColor: Colors.white,
        initialSelection: _selectedIndex,
        tabs: [
          TabData(icon: const Icon(Icons.home), title: "Home"),
          TabData(
              icon: const Icon(Icons.notification_add), title: "Notification"),
          TabData(icon: const Icon(Icons.shopping_cart), title: "Market"),
        ],
        onTabChangedListener: _onItemTapped,
      ),
    );
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('No Notifications'),
      ),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fem = 1.0; // Replace with your desired value
    double ffem = 1.0; // Replace with your desired value

    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20 * fem, 85 * fem, 20 * fem, 20 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(20, 254, 255, 255),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image and Text Section
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
              padding:
                  EdgeInsets.fromLTRB(18 * fem, 24 * fem, 20 * fem, 0 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15 * fem),
                image: const DecorationImage(
                  image: AssetImage('assets/images/ai.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chat with Our Own AI about any Agri Queries',
                    style: TextStyle(
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2 * ffem / fem,
                      color: const Color(0xffffffff),
                    ),
                  ),
                  Text(
                    'GrowWise AI',
                    style: TextStyle(
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.4475 * ffem / fem,
                      color: const Color(0xffffffff),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AiBotScreen()),
                      );
                    },
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            //weather and contact widget
            Row(children: [
              Container(
                margin:
                    EdgeInsets.fromLTRB(5 * fem, 0 * fem, 20 * fem, 0 * fem),
                padding:
                    EdgeInsets.fromLTRB(2 * fem, 35 * fem, 20 * fem, 0 * fem),
                width: 170 * fem,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15 * fem),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/contact.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AppointmentBookingPage()),
                        );
                      },
                      child: Text(
                        'Book your Appointment',
                        style: TextStyle(
                          fontSize: 17 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1 * ffem / fem,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              const WeatherInfoWidget()
            ]),

            // Newsletter Section
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 25 * fem, 0 * fem, 0 * fem),
              padding: EdgeInsets.all(5 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15 * fem),
                color: const Color.fromARGB(30, 21, 200, 12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Latest News in India',
                    style: TextStyle(
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2 * ffem / fem,
                      color: const Color(0xff02841e),
                    ),
                  ),
                  SizedBox(height: 1 * fem),
                  const NewsletterWidget(), // Use your NewsletterWidget here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

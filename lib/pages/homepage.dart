import 'package:flutter/material.dart';
import 'package:growise/pages/newsletter.dart';
import 'package:growise/pages/home.dart';
import 'package:growise/pages/aibot.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    double fem = 1.0; // Replace with your desired value
    double ffem = 1.0; // Replace with your desired value

    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20 * fem, 30 * fem, 19 * fem, 66 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Section with Settings and Shopping Cart
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 28 * fem),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () {
                      // Handle settings button press
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.shopping_cart),
                    onPressed: () {
                      // Handle shopping cart button press
                    },
                  ),
                ],
              ),
            ),

            // Header Section
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 28 * fem),
              width: 147 * fem,
              height: 26 * fem,
              child: Stack(
                children: [
                  Positioned(
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 146 * fem,
                        height: 26 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10 * fem),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 5 * fem,
                    top: 1 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 120 * fem,
                        height: 24 * fem,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()),
                            );
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Text(
                            'Change Crop',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2 * ffem / fem,
                              color: const Color(0xff02841e),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Image and Text Section
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 17 * fem),
              padding:
                  EdgeInsets.fromLTRB(18 * fem, 24 * fem, 20 * fem, 7 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15 * fem),
                image: const DecorationImage(
                  image: AssetImage('lib/assets/ai.jpg'),
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

            // Newsletter Section
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 17 * fem),
              padding: EdgeInsets.all(10 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15 * fem),
                color: const Color(0xfff7f8f9),
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
                  SizedBox(height: 10 * fem),
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

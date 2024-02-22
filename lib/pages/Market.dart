import 'package:flutter/material.dart';
//import 'package:growise/pages/home.dart';
import 'package:growise/pages/homepage.dart';
import 'package:growise/pages/products.dart';

class Market extends StatelessWidget {
  const Market({Key? key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    String selectedCategory = ''; // Initialize selected category variable
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff02831d),
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                // Navigate to page associated with this icon
              },
              icon: Image.asset('assets/images/image-3.png',
                  width: 30 * fem, height: 30 * fem),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                // Navigate to page associated with this icon
              },
              icon: Image.asset('assets/images/image-2.png',
                  width: 30 * fem, height: 30 * fem),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                // Navigate to page associated with this icon
              },
              icon: Image.asset('assets/images/shopping-cart-1-1.png',
                  width: 30 * fem, height: 30 * fem),
            ),
            label: '',
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.fromLTRB(0 * fem, 27 * fem, 0 * fem, 0 * fem),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 22 * fem),
                padding: EdgeInsets.fromLTRB(
                    21 * fem, 13 * fem, 130.87 * fem, 13 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0x19ffffff)),
                  color: const Color(0xfffffefe),
                  borderRadius: BorderRadius.circular(2 * fem),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x3f000000),
                      offset: Offset(0 * fem, 4 * fem),
                      blurRadius: 2 * fem,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Homepage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 0 * fem),
                        width: 35 * fem,
                        height: 35 * fem,
                        child: Image.asset(
                          'assets/images/back.png',
                          width: 41 * fem,
                          height: 41 * fem,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          50 * fem, 1.29 * fem, 0 * fem, 0 * fem),
                      child: Text(
                        'Marketplace',
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 0.5335389137 * ffem / fem,
                          color: const Color(0xff02841e),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(38 * fem, 0 * fem, 0 * fem, 0 * fem),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontFamily: 'Urbanist',
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.2 * ffem / fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.fromLTRB(38 * fem, 31 * fem, 38 * fem, 32 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 163 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              selectedCategory =
                                  'Tools'; // Update selected category
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Products(category: selectedCategory)),
                              );
                            },
                            child: AnimatedContainer(
                              duration: const Duration(
                                  milliseconds: 300), // Set animation duration
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 24.6 * fem, 0 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  6 * fem, 4 * fem, 5 * fem, 4 * fem),
                              width: 129.4 * fem, // Adjusted width
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xff02841e),
                                borderRadius: BorderRadius.circular(20 * fem),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 4 * fem, 0 * fem, 0 * fem),
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(20 * fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 1 * fem, 5 * fem),
                                      width: 123 * fem,
                                      height: 123 * fem,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(20 * fem),
                                        child: Image.asset(
                                          'assets/images/rectangle-190-4Ky.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 3 * fem, 0 * fem),
                                      child: Text(
                                        'Tools',
                                        style: TextStyle(
                                          fontFamily: 'Urbanist',
                                          fontSize: 20 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2 * ffem / fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5 * fem), // Add SizedBox for spacing
                          GestureDetector(
                            onTap: () {
                              selectedCategory =
                                  'Seeds'; // Update selected category
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Products(category: selectedCategory)),
                              );
                            },
                            child: AnimatedContainer(
                              duration: const Duration(
                                  milliseconds: 300), // Set animation duration
                              padding: EdgeInsets.fromLTRB(
                                  6 * fem, 4 * fem, 5 * fem, 4 * fem),
                              width: 129.4 * fem, // Adjusted width
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xff02841e),
                                borderRadius: BorderRadius.circular(20 * fem),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 4 * fem, 0 * fem, 0 * fem),
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(20 * fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 1 * fem, 5 * fem),
                                      width: 123 * fem,
                                      height: 123 * fem,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(20 * fem),
                                        child: Image.asset(
                                          'assets/images/rectangle-190-mr7.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 3 * fem, 0 * fem),
                                      child: Text(
                                        'Seeds',
                                        style: TextStyle(
                                          fontFamily: 'Urbanist',
                                          fontSize: 20 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2 * ffem / fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10 * fem,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 163 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              selectedCategory =
                                  'Fertilisers'; // Update selected category
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Products(category: selectedCategory)),
                              );
                            },
                            child: AnimatedContainer(
                              duration: const Duration(
                                  milliseconds: 300), // Set animation duration
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 24.6 * fem, 0 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  6 * fem, 4 * fem, 5 * fem, 4 * fem),
                              width: 129.4 * fem, // Adjusted width
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xff02841e),
                                borderRadius: BorderRadius.circular(20 * fem),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 4 * fem, 0 * fem, 0 * fem),
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(20 * fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 1 * fem, 5 * fem),
                                      width: 123 * fem,
                                      height: 123 * fem,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(20 * fem),
                                        child: Image.asset(
                                          'assets/images/fertilize.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 3 * fem, 0 * fem),
                                      child: Text(
                                        'Fertilisers',
                                        style: TextStyle(
                                          fontFamily: 'Urbanist',
                                          fontSize: 20 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2 * ffem / fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5 * fem), // Add SizedBox for spacing
                          GestureDetector(
                            onTap: () {
                              selectedCategory =
                                  'Crop Protection'; // Update selected category
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Products(category: selectedCategory)),
                              );
                            },
                            child: AnimatedContainer(
                              duration: const Duration(
                                  milliseconds: 300), // Set animation duration
                              padding: EdgeInsets.fromLTRB(
                                  6 * fem, 4 * fem, 5 * fem, 4 * fem),
                              width: 129.4 * fem, // Adjusted width
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xff02841e),
                                borderRadius: BorderRadius.circular(20 * fem),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 4 * fem, 0 * fem, 0 * fem),
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(20 * fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 1 * fem, 5 * fem),
                                      width: 120 * fem,
                                      height: 120 * fem,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(20 * fem),
                                        child: Image.asset(
                                          'assets/images/rectangle-190.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 3 * fem, 0 * fem),
                                      child: Text(
                                        'Crop Protection',
                                        style: TextStyle(
                                          fontFamily: 'Urbanist',
                                          fontSize: 15 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2 * ffem / fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10 * fem,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 163 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              selectedCategory =
                                  'Irrigation Products'; // Update selected category
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Products(category: selectedCategory)),
                              );
                            },
                            child: AnimatedContainer(
                              duration: const Duration(
                                  milliseconds: 300), // Set animation duration
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 24.6 * fem, 0 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  6 * fem, 4 * fem, 5 * fem, 4 * fem),
                              width: 129.4 * fem, // Adjusted width
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xff02841e),
                                borderRadius: BorderRadius.circular(20 * fem),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 4 * fem, 0 * fem, 0 * fem),
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(20 * fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 1 * fem, 5 * fem),
                                      width: 123 * fem,
                                      height: 123 * fem,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(20 * fem),
                                        child: Image.asset(
                                          'assets/images/rectangle-190-Avb.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 3 * fem, 0 * fem),
                                      child: Text(
                                        'Irrigation Products',
                                        style: TextStyle(
                                          fontFamily: 'Urbanist',
                                          fontSize: 13 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2 * ffem / fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5 * fem), // Add SizedBox for spacing
                          GestureDetector(
                            onTap: () {
                              selectedCategory =
                                  'Pesticide'; // Update selected category
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Products(category: selectedCategory)),
                              );
                            },
                            child: AnimatedContainer(
                              duration: const Duration(
                                  milliseconds: 300), // Set animation duration
                              padding: EdgeInsets.fromLTRB(
                                  6 * fem, 4 * fem, 5 * fem, 4 * fem),
                              width: 129.4 * fem, // Adjusted width
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xff02841e),
                                borderRadius: BorderRadius.circular(20 * fem),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 4 * fem, 0 * fem, 0 * fem),
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(20 * fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 1 * fem, 5 * fem),
                                      width: 120 * fem,
                                      height: 120 * fem,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(20 * fem),
                                        child: Image.asset(
                                          'assets/images/rectangle-190-k9m.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 3 * fem, 0 * fem),
                                      child: Text(
                                        'Pesticide',
                                        style: TextStyle(
                                          fontFamily: 'Urbanist',
                                          fontSize: 20 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2 * ffem / fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

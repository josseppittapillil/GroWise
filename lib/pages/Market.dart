import 'package:flutter/material.dart';
import 'package:growise/pages/homepage.dart';
import 'package:growise/pages/products.dart'; // Import the cart.dart file
import 'iteminfo.dart';

class Market extends StatefulWidget {
  const Market({Key? key}) : super(key: key);

  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    String selectedCategory = ''; // Initialize selected category variable
    return Scaffold(
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
                              builder: (context) => const BottomNavExample()),
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
                              selectedCategory = 'Tools';
                              List<Item> items =
                                  categorizedItems[selectedCategory]!;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Products(
                                    category: selectedCategory,
                                    items: items,
                                  ),
                                ),
                              );
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 24.6 * fem, 0 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  6 * fem, 4 * fem, 5 * fem, 4 * fem),
                              width: 129.4 * fem,
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
                          SizedBox(width: 5 * fem),
                          GestureDetector(
                            onTap: () {
                              selectedCategory = 'Seeds';
                              List<Item> items =
                                  categorizedItems[selectedCategory]!;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Products(
                                    category: selectedCategory,
                                    items: items,
                                  ),
                                ),
                              );
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              padding: EdgeInsets.fromLTRB(
                                  6 * fem, 4 * fem, 5 * fem, 4 * fem),
                              width: 129.4 * fem,
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
                              selectedCategory = 'Fertilizers';
                              List<Item> items =
                                  categorizedItems[selectedCategory]!;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Products(
                                    category: selectedCategory,
                                    items: items,
                                  ),
                                ),
                              );
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 24.6 * fem, 0 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  6 * fem, 4 * fem, 5 * fem, 4 * fem),
                              width: 129.4 * fem,
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
                                        'Fertilizers',
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
                          SizedBox(width: 5 * fem),
                          GestureDetector(
                            onTap: () {
                              selectedCategory = 'Crop Protection';
                              List<Item> items =
                                  categorizedItems[selectedCategory]!;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Products(
                                    category: selectedCategory,
                                    items: items,
                                  ),
                                ),
                              );
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              padding: EdgeInsets.fromLTRB(
                                  6 * fem, 4 * fem, 5 * fem, 4 * fem),
                              width: 129.4 * fem,
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
                              selectedCategory = 'Irrigation Products';
                              List<Item> items =
                                  categorizedItems[selectedCategory]!;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Products(
                                    category: selectedCategory,
                                    items: items,
                                  ),
                                ),
                              );
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 24.6 * fem, 0 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  6 * fem, 4 * fem, 5 * fem, 4 * fem),
                              width: 129.4 * fem,
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
                          SizedBox(width: 5 * fem),
                          GestureDetector(
                            onTap: () {
                              selectedCategory = 'Pesticide/Fungicides';
                              List<Item> items =
                                  categorizedItems[selectedCategory]!;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Products(
                                    category: selectedCategory,
                                    items: items,
                                  ),
                                ),
                              );
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              padding: EdgeInsets.fromLTRB(
                                  6 * fem, 4 * fem, 5 * fem, 4 * fem),
                              width: 129.4 * fem,
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

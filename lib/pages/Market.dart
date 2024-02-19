import 'package:flutter/material.dart';
import 'package:growise/pages/homepage.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:growise/utils.dart';

class Market extends StatelessWidget {
  const Market({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // cart3S7 (0:9)
        padding: EdgeInsets.fromLTRB(0 * fem, 27 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // frame15HDy (0:10)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 22 * fem),
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
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Homepage()),
                      );
                    },
                    child: Container(
                      // backuWF (0:11)
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
                    // marketplacep7R (0:15)
                    margin: EdgeInsets.fromLTRB(
                        45 * fem, 1.29 * fem, 0 * fem, 0 * fem),
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
              // categoriesg9d (0:16)
              margin: EdgeInsets.fromLTRB(38 * fem, 0 * fem, 0 * fem, 0 * fem),
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
              // autogroupc5qhPJw (GqTNEGNYNTAVmxqVgdc5qH)
              padding:
                  EdgeInsets.fromLTRB(38 * fem, 31 * fem, 38 * fem, 32 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    // autogroupcbdhWeT (GqTMPxRhnJLZeWaGF3cbdH)
                    width: double.infinity,
                    height: 164 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame22qgj (0:17)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 29 * fem, 0 * fem),
                          padding: EdgeInsets.fromLTRB(
                              6 * fem, 4 * fem, 5 * fem, 4 * fem),
                          width: 135 * fem,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xff02841e),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Container(
                            // frame21anj (0:19)
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
                                  // rectangle190g55 (0:21)
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
                                  // toolsMh1 (0:22)
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
                        Container(
                          // frame23sQT (0:23)
                          padding: EdgeInsets.fromLTRB(
                              6 * fem, 4 * fem, 5 * fem, 4 * fem),
                          width: 135 * fem,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xff02841e),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Container(
                            // frame21nXR (0:25)
                            padding: EdgeInsets.fromLTRB(
                                5 * fem, 17 * fem, 6 * fem, 2 * fem),
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
                                  // rectangle190g71 (0:28)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 7 * fem),
                                  width: 113 * fem,
                                  height: 106 * fem,
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                    child: Image.asset(
                                      'assets/images/rectangle-190-mr7.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  // seedsmPM (0:27)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 1 * fem, 0 * fem),
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 17 * fem,
                  ),
                  SizedBox(
                    // autogroupgnntGb1 (GqTMknALj29Dyitq35GNnT)
                    width: double.infinity,
                    height: 164 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame24cPy (0:29)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 29 * fem, 0 * fem),
                          padding: EdgeInsets.fromLTRB(
                              6 * fem, 4 * fem, 5 * fem, 4 * fem),
                          width: 135 * fem,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xff02841e),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Container(
                            // frame21KJP (0:31)
                            padding: EdgeInsets.fromLTRB(
                                7 * fem, 13 * fem, 9 * fem, 3 * fem),
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
                                  // rectangle190q1q (0:34)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 9 * fem),
                                  width: 108 * fem,
                                  height: 107 * fem,
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                    child: Image.asset(
                                      'assets/images/rectangle-190-ePR.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  // fungicidekPh (0:33)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 1 * fem, 0 * fem),
                                  child: Text(
                                    'Fungicide',
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
                        Container(
                          // frame25rhd (0:35)
                          padding: EdgeInsets.fromLTRB(
                              6 * fem, 4 * fem, 5 * fem, 4 * fem),
                          width: 135 * fem,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xff02841e),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Container(
                            // frame21atX (0:37)
                            padding: EdgeInsets.fromLTRB(
                                5 * fem, 11 * fem, 5 * fem, 7 * fem),
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
                                  // rectangle190WGP (0:40)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 11 * fem),
                                  width: 114 * fem,
                                  height: 107 * fem,
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                    child: Image.asset(
                                      'assets/images/rectangle-190.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  // cropprotectionReF (0:39)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 1 * fem, 0 * fem),
                                  child: Text(
                                    'Crop Protection',
                                    style: TextStyle(
                                      fontFamily: 'Urbanist',
                                      fontSize: 16 * ffem,
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 17 * fem,
                  ),
                  SizedBox(
                    // autogroup5qr9LWK (GqTMz2HGqyxmKNCCpb5qR9)
                    width: double.infinity,
                    height: 164 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame26tXq (0:41)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 29 * fem, 0 * fem),
                          padding: EdgeInsets.fromLTRB(
                              6 * fem, 4 * fem, 5 * fem, 4 * fem),
                          width: 135 * fem,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xff02841e),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Container(
                            // frame21C2j (0:43)
                            padding: EdgeInsets.fromLTRB(
                                4 * fem, 10 * fem, 6 * fem, 14 * fem),
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
                                  // rectangle190JrT (0:46)
                                  margin: EdgeInsets.fromLTRB(
                                      2 * fem, 0 * fem, 0 * fem, 12 * fem),
                                  width: 106 * fem,
                                  height: 103 * fem,
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                    child: Image.asset(
                                      'assets/images/rectangle-190-Avb.png',
                                    ),
                                  ),
                                ),
                                Text(
                                  // irrigationproductscs9 (0:45)
                                  'Irrigation Products',
                                  style: TextStyle(
                                    fontFamily: 'Urbanist',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2 * ffem / fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // frame27ANs (0:47)
                          padding: EdgeInsets.fromLTRB(
                              6 * fem, 4 * fem, 5 * fem, 4 * fem),
                          width: 135 * fem,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xff02841e),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Container(
                            // frame21gs1 (0:49)
                            padding: EdgeInsets.fromLTRB(
                                7 * fem, 12 * fem, 7 * fem, 7 * fem),
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
                                  // rectangle190Qo1 (0:52)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 10 * fem, 9 * fem),
                                  width: 100 * fem,
                                  height: 104 * fem,
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                    child: Image.asset(
                                      'assets/images/rectangle-190-k9m.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  // pesticidesj4b (0:51)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 3 * fem, 0 * fem),
                                  child: Text(
                                    'Pesticides',
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame29ehM (0:55)
              width: double.infinity,
              height: 73.2 * fem,
              decoration: const BoxDecoration(
                color: Color(0xff02831d),
              ),
              child: Container(
                // frame30nYf (0:57)
                padding:
                    EdgeInsets.fromLTRB(38 * fem, 10 * fem, 37 * fem, 10 * fem),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff02831d),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15 * fem),
                    topRight: Radius.circular(15 * fem),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      // image3t5u (0:61)
                      width: 30 * fem,
                      height: 30 * fem,
                      child: Image.asset(
                        'assets/images/image-3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 93 * fem,
                    ),
                    SizedBox(
                      // image2D8B (0:60)
                      width: 30 * fem,
                      height: 30 * fem,
                      child: Image.asset(
                        'assets/images/image-2.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 93 * fem,
                    ),
                    SizedBox(
                      // shoppingcart11LyV (0:59)
                      width: 30 * fem,
                      height: 30 * fem,
                      child: Image.asset(
                        'assets/images/shopping-cart-1-1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

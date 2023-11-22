import 'package:flutter/material.dart';

class YourPage extends StatelessWidget {
  const YourPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double fem = 1.0; // Replace with your actual scaling factor
    const double ffem = 1.0; // Replace with your actual scaling factor

    return SizedBox(
      width: double.infinity,
      height: 812 * fem, // Adjust the height accordingly
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                width: 375 * fem,
                height: 812 * fem,
                decoration: const BoxDecoration(
                  color: Color(0xffffffff),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: -1366 * fem,
                      top: -630 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 3002 * fem,
                          height: 2000 * fem,
                          child: Image.network(
                            '[Image url]',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 148 * fem,
                      top: 327 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 79 * fem,
                          height: 79 * fem,
                          child: Image.network(
                            '[Image url]',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 22.5 * fem,
                      top: 676 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 331 * fem,
                          height: 18 * fem,
                          child: Text(
                            'Place the pin on Your accurate location on the map',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Urbanist',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 23 * fem,
              top: 718 * fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: 330 * fem,
                  height: 56 * fem,
                  child: Container(
                    color: const Color(0xff02841e),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8 * fem),
                    ),
                    child: const Center(
                      child: Text(
                        'Choose Your Location',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20 * fem,
              top: 63 * fem,
              child: Align(
                child: SizedBox(
                  width: 41 * fem,
                  height: 41 * fem,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Image.network(
                      '[Image url]',
                      width: 41 * fem,
                      height: 41 * fem,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

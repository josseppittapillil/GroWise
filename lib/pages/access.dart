import 'package:flutter/material.dart';
import 'package:growise/pages/admin/adminhome.dart';
import 'package:growise/pages/login.dart';

class AccessPage extends StatelessWidget {
  const AccessPage({Key? key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 60 * fem,
              margin: EdgeInsets.only(top: 28 * fem),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0x19ffffff)),
                color: const Color(0xFFFFFEFE),
                borderRadius: BorderRadius.circular(2 * fem),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3f000000),
                    offset: Offset(0 * fem, 4 * fem),
                    blurRadius: 2 * fem,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Access Type',
                  style: TextStyle(
                    fontFamily: 'Urbanist',
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.2 * ffem / fem,
                    color: const Color(0xFF02831D),
                  ),
                ),
              ),
            ),
            SizedBox(height: 160 * fem),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildAccessButton(
                  context: context,
                  icon: Icons.supervisor_account,
                  text: 'Admin',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const AdminHome()),
                    );
                  },
                ),
                SizedBox(width: 50 * fem),
                buildAccessButton(
                  context: context,
                  icon: Icons.diversity_3,
                  text: 'User',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 200 * fem),
            Container(
              constraints: BoxConstraints(maxWidth: 228 * fem),
              child: Text(
                'Select the type of access you require',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontSize: 20 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2 * ffem / fem,
                  color: const Color(0xFF000000),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildAccessButton({
    required BuildContext context,
    required IconData icon,
    required String text,
    required VoidCallback onPressed,
  }) {
    double fem = MediaQuery.of(context).size.width / 375;
    double ffem = fem * 0.97;

    return Container(
      padding: EdgeInsets.fromLTRB(30 * fem, 30* fem, 36 * fem, 14 * fem),
      height: 125 * fem,
      width: 125 * fem,
      decoration: BoxDecoration(
        color: const Color(0xFF02841E),
        borderRadius: BorderRadius.circular(20 * fem),
        boxShadow: [
          BoxShadow(
            color: const Color(0x3F000000),
            offset: Offset(0 * fem, 4 * fem),
            blurRadius: 2 * fem,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(icon),
            onPressed: onPressed,
            color: Colors.white,
          ),
          SizedBox(height: 10 * fem),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Urbanist',
              fontSize: 20 * ffem,
              fontWeight: FontWeight.w600,
              height: 1.2 * ffem / fem,
              color: const Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
    );
  }
}

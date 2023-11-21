import 'package:flutter/material.dart';
import 'package:growwise/pages/front.dart';
import 'package:growwise/pages/register.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double fem = 1.0; // Replace with your actual scaling factor
    const double ffem = 1.0; // Replace with your actual scaling factor

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: 812 * fem,
        child: Container(
          padding:
              const EdgeInsets.fromLTRB(40 * fem, 55 * fem, 0 * fem, 85 * fem),
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildBackButton(context),
              const Spacer(),
              _buildInputContainer('Enter your email', Icons.email),
              _buildInputContainerWithIcon('Enter your password', Icons.lock),
              const Spacer(),
              _buildLoginButton(context),
              _buildRegisterNowText(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: IconButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const FrontPage()),
          );
        },
        icon: const Icon(Icons.arrow_back),
      ),
    );
  }

  Widget _buildInputContainer(String hintText, IconData icon) {
    const double fem = 1.0; // Replace with your actual scaling factor
    const double ffem = 1.0; // Replace with your actual scaling factor

    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
      padding: const EdgeInsets.fromLTRB(19.94, 19, 19.94, 18),
      width: 330 * fem,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffdadada)),
        color: const Color(0xfff7f8f9),
        borderRadius: BorderRadius.circular(8 * fem),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          icon: Icon(icon),
        ),
      ),
    );
  }

  Widget _buildInputContainerWithIcon(String hintText, IconData icon) {
    const double fem = 1.0; // Replace with your actual scaling factor
    const double ffem = 1.0; // Replace with your actual scaling factor

    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
      padding: const EdgeInsets.fromLTRB(20, 17, 9.97, 17),
      width: 330 * fem,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffdadada)),
        color: const Color(0xfff7f8f9),
        borderRadius: BorderRadius.circular(8 * fem),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                icon: Icon(icon),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              // Toggle password visibility
            },
            icon: const Icon(Icons.visibility),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    const double fem = 1.0; // Replace with your actual scaling factor
    const double ffem = 1.0; // Replace with your actual scaling factor

    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: const Color(0xff02841e),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const SizedBox(
          width: 330 * fem,
          height: 56 * fem,
          child: Center(
            child: Text(
              'Login',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Urbanist',
                fontSize: 15 * ffem,
                fontWeight: FontWeight.w600,
                color: Color(0xffffffff),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRegisterNowText(BuildContext context) {
    const double fem = 1.0; // Replace with your actual scaling factor
    const double ffem = 1.0; // Replace with your actual scaling factor

    return Container(
      margin: const EdgeInsets.only(top: 20, left: 120),
      child: TextButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const RegisterPage()),
          );
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 15 * ffem,
              fontWeight: FontWeight.w600,
              height: 1.4 * ffem / fem,
              letterSpacing: 0.15 * fem,
              color: Color(0xff02841e),
            ),
            children: [
              TextSpan(
                text: ' ',
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontSize: 15 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.4 * ffem / fem,
                  letterSpacing: 0.15 * fem,
                  color: Color(0xff02841e),
                ),
              ),
              TextSpan(
                text: 'Register Now',
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontSize: 15 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.4 * ffem / fem,
                  letterSpacing: 0.15 * fem,
                  color: Color(0xff02841e),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

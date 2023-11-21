import 'package:flutter/material.dart';
import 'package:growwise/pages/front.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double fem = 1.0; // Replace with your actual scaling factor
    const double ffem = 1.0; // Replace with your actual scaling factor

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          padding:
              const EdgeInsets.fromLTRB(20 * fem, 45 * fem, 20 * fem, 0 * fem),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const FrontPage()),
                  );
                },
              ),
              const SizedBox(
                  height: 15 *
                      fem), // Add spacing between back button and next widget
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Place the pin on Your accurate location on the map',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffffffff),
                      ),
                    ),
                    const SizedBox(
                        height:
                            15 * fem), // Add spacing between text and TextField
                    Container(
                      padding: const EdgeInsets.fromLTRB(
                          19.94 * fem, 19 * fem, 19.94 * fem, 18 * fem),
                      width: 330 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffdadada)),
                        color: const Color(0xfff7f8f9),
                        borderRadius: BorderRadius.circular(8 * fem),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                        height: 15 *
                            fem), // Add spacing between TextField and next widget
                    Container(
                      padding: const EdgeInsets.fromLTRB(
                          19.94 * fem, 19 * fem, 19.94 * fem, 18 * fem),
                      width: 330 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffdadada)),
                        color: const Color(0xfff7f8f9),
                        borderRadius: BorderRadius.circular(8 * fem),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                        height: 15 *
                            fem), // Add spacing between TextField and next widget
                    Container(
                      padding: const EdgeInsets.fromLTRB(
                          19.94 * fem, 19 * fem, 19.94 * fem, 18 * fem),
                      width: 330 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffdadada)),
                        color: const Color(0xfff7f8f9),
                        borderRadius: BorderRadius.circular(8 * fem),
                      ),
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                        height: 15 *
                            fem), // Add spacing between TextField and next widget
                    Container(
                      padding: const EdgeInsets.fromLTRB(
                          20 * fem, 18 * fem, 20 * fem, 19 * fem),
                      width: 330 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffdadada)),
                        color: const Color(0xfff7f8f9),
                        borderRadius: BorderRadius.circular(8 * fem),
                      ),
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Confirm password',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                        height: 80 *
                            fem), // Add spacing between TextField and Button
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(
                    35 * fem, 18 * fem, 0 * fem, 19 * fem),
                width: 330 * fem,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: const Color(0xff02841e),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8 * fem),
                    ),
                  ),
                  child: const SizedBox(
                    width: double.infinity,
                    height: 56 * fem,
                    child: Center(
                      child: Text(
                        'Agree and Register',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

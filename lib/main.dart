import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:growise/pages/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GroWise',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Urbanist',
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay of 5 seconds before navigating to the 'front' function
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const FrontPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Column(
              children: [
                SizedBox(
                  height: 300,
                ),
                Image(
                  image: AssetImage('assets/images/logo.png'),
                ),
                Text(
                  'GroWise',
                  style: TextStyle(fontSize: 24, color: Colors.green),
                ),
              ],
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.25), // Adjust the height based on your requirement
            const Text(
              'Since',
              style: TextStyle(fontSize: 19, color: Colors.white),
            ),
            const Text(
              '2024',
              style: TextStyle(fontSize: 22, color: Colors.green),
            )
          ],
        ),
      ),
    );
  }
}


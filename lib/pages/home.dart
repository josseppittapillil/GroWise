import 'package:flutter/material.dart';
import 'homepage.dart'; // Import the BottomNavExample page

class InfoScreen extends StatelessWidget {
  final String text;

  const InfoScreen({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
          image: AssetImage(text),
          alignment: Alignment.topCenter,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Transparent app bar
        elevation: 0, // No shadow
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Image(
              image: AssetImage('assets/images/logo0.jpg'),
              width: 500, // Increased width
              height: 500, // Increased height
            ),
            const SizedBox(height: 20), // Add space between image and text
            const Text(
              'Welcome to GroWise!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10), // Add space between text
            const Text(
              '"Your Partner in',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            const Text(
              'Agricultural Excellence"',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff02841e), // Background color
                minimumSize: const Size(300, 50), // Increased width
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text(
                'Get Started',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Info1Page extends StatelessWidget {
  const Info1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Transparent app bar
        elevation: 0, // No shadow
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                '"Introducing our AI Chatbot tailored specifically for the agriculture industry"',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Image(
              image: AssetImage('assets/images/info1.jpg'),
              width: 400, // Adjust width as needed
              height: 400, // Adjust height as needed
            ),
            SizedBox(height: 20), // Add space between image and text
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '"Our AI Chatbot serves as a virtual assistant, providing farmers with instant access to valuable information and guidance on crop management, pest control, weather forecasts, and more."',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Info2Page extends StatelessWidget {
  const Info2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              '"Introducing our Marketplace, exclusively for purchasing agricultural products"',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Image(
              image: AssetImage('assets/images/info2.jpg'),
              width: 400,
              height: 400,
            ),
            SizedBox(height: 10),
            Text(
              'The integrated marketplace provides a convenient platform for purchasing essential supplies, equipment, and services directly from trusted vendors to thrive in the agricultural sector.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class Info3Page extends StatelessWidget {
  const Info3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // Remove shadow
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              '"Appointment Booking feature, designed to streamline your agricultural operations"',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            Image.asset(
              'assets/images/info3.jpg',
              height: 350,
              width: 350,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            const Text(
              "“Easily schedule crop consultations, veterinary visits, equipment maintenance, and more—all from your phone. Simplify your appointments and manage them effortlessly with our app.”",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const Info1Page(),
    const Info2Page(),
    const Info3Page()
  ];

  void _nextPage() {
    setState(() {
      if (_currentIndex < _screens.length - 1) {
        _currentIndex++;
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const BottomNavExample(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      floatingActionButton: TextButton(
        onPressed: _nextPage,
        style: const ButtonStyle(alignment: Alignment.bottomCenter),
        child: const Text(
          "NEXT >",
          style: TextStyle(
              color: Color.fromRGBO(2, 132, 30, 1),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

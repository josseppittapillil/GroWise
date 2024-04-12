import 'package:flutter/material.dart';
import 'homepage.dart'; // Import the BottomNavExample page

class InfoScreen extends StatelessWidget {
  final String text;
  final Color color;

  const InfoScreen({Key? key, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
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
    const InfoScreen(text: 'Info 1', color: Colors.blue),
    const InfoScreen(text: 'Info 2', color: Colors.green),
    const InfoScreen(text: 'Info 3', color: Colors.orange),
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
      floatingActionButton: FloatingActionButton(
        onPressed: _nextPage,
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}

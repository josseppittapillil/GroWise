import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Authentication
import 'package:growise/pages/register.dart';
import 'location.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 300,
              ),
              _buildLogoTextField('Email', Icons.email, _emailController),
              const SizedBox(height: 16.0),
              _buildLogoTextField('Password', Icons.lock, _passwordController,
                  obscureText: true),
              const SizedBox(height: 100.0),
              _buildLoginButton(context),
              const SizedBox(height: 30.0),
              _buildRegisterNowButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogoTextField(
      String labelText, IconData icon, TextEditingController controller,
      {bool obscureText = false}) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffdadada)),
        color: const Color(0xfff7f8f9),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xff02841e)), // Green color for icon
          const SizedBox(width: 8.0),
          Expanded(
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                labelText: labelText,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        try {
          // ignore: unused_local_variable
          UserCredential userCredential =
              await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: _emailController.text,
            password: _passwordController.text,
          );

          // If login is successful, show success dialog
          _showSuccessDialog('Success', 'Login Successful');

          // Redirect to the home page
          // ignore: use_build_context_synchronously
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const Maps()),
          );
        } catch (e) {
          // If login fails, show error dialog
          _showErrorDialog('Error', 'Invalid User Credentials');
        }
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff02841e), // Text color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text('Login'),
      ),
    );
  }

  Widget _buildRegisterNowButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Redirect to the register page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const RegisterPage()),
        );
      },
      style: TextButton.styleFrom(
        foregroundColor: const Color(0xff02841e), // Green color
      ),
      child: const Text(
        'New User? Register Now . . .',
        style: TextStyle(
          fontSize: 20.0, // Adjust the font size as needed
        ),
      ),
    );
  }

  void _showErrorDialog(String title, String content) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _showSuccessDialog(String title, String content) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}

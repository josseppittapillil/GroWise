import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:growwise/pages/login.dart';

class UserCredentials {
  String username;
  String email;
  String password;

  UserCredentials({
    required this.username,
    required this.email,
    required this.password,
  });
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              _buildBackButton(context),
              const SizedBox(height: 100.0),
              _buildTextField('Username', _usernameController),
              const SizedBox(height: 16.0),
              _buildTextField('Email', _emailController),
              const SizedBox(height: 16.0),
              _buildTextField('Password', _passwordController,
                  obscureText: true),
              const SizedBox(height: 16.0),
              _buildTextField('Confirm Password', _confirmPasswordController,
                  obscureText: true),
              const SizedBox(height: 32.0),
              _buildRegisterButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        },
      ),
    );
  }

  Widget _buildTextField(String labelText, TextEditingController controller,
      {bool obscureText = false}) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffdadada)),
        color: const Color(0xfff7f8f9),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _buildRegisterButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        // Check if the passwords match
        if (_passwordController.text != _confirmPasswordController.text) {
          // Show error dialog
          _showErrorDialog('Error', 'Passwords don\'t match');
          return;
        }

        // Store user credentials
        final userCredentials = UserCredentials(
          username: _usernameController.text,
          email: _emailController.text,
          password: _passwordController.text,
        );

        await saveUserCredentials(userCredentials);

        // Show success message
        _showSuccessDialog('Success', 'Registered Successfully');

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
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
        child: Text('Register Now'),
      ),
    );
  }

  Future<void> saveUserCredentials(UserCredentials credentials) async {
    final prefs = await SharedPreferences.getInstance();

    // Retrieve existing user credentials list
    final List<String> userCredentialsList =
        prefs.getStringList('userCredentialsList') ?? [];

    // Add the new user credentials to the list
    userCredentialsList.add(
      '${credentials.username},${credentials.email},${credentials.password}',
    );

    // Save the updated list to SharedPreferences
    prefs.setStringList('userCredentialsList', userCredentialsList);
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

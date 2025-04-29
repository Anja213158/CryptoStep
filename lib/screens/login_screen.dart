import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'signup_screen.dart';
import 'home_screen.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showEmailLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100], // Baby blue background
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueAccent.withOpacity(0.4),
                  blurRadius: 20,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.directions_walk,
                  size: 100,
                  color: Colors.blueGrey,
                ),
                SizedBox(height: 10),
                Text(
                  "Earn Crypto. Step by Step.",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 30),

                if (!showEmailLogin) ...[
                  _buildLoginButton(
                    "Sign in with Google",
                    Icons.login,
                    Colors.blueAccent,
                        () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                  ),
                  _buildLoginButton(
                    "Sign in with Apple",
                    Icons.apple,
                    Colors.black,
                        () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                  ),
                  SizedBox(height: 12),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        showEmailLogin = true;
                      });
                    },
                    child: Text(
                      "Prefer email login?",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                ] else ...[
                  CustomTextField(label: 'Email', hint: 'Enter your email'),
                  SizedBox(height: 16),
                  CustomTextField(
                    label: 'Password',
                    hint: 'Enter your password',
                    obscureText: true,
                  ),
                  SizedBox(height: 24),
                  CustomButton(
                    text: 'Continue',
                    neon: true,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                  ),
                  SizedBox(height: 12),
                  // Додај опција за враќање назад
                  TextButton(
                    onPressed: () {
                      setState(() {
                        showEmailLogin = false;
                      });
                    },
                    child: Text(
                      "Back",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                ],

                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                  child: Text(
                    "Don't have an account? Sign up.",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginButton(
      String text,
      IconData icon,
      Color color,
      VoidCallback onPressed,
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: double.infinity, // Makes the button width match its parent container
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
          ),
          icon: Icon(icon),
          label: Text(text),
          onPressed: onPressed,
        ),
      ),
    );
  }
}

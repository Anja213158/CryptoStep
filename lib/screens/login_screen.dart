import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'home_screen.dart';
import '/widgets/custom_button.dart';
import '/widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 100),
            CustomTextField(label: 'Email', hint: 'Enter your email'),
            SizedBox(height: 20),
            CustomTextField(label: 'Password', hint: 'Enter your password', obscureText: true),
            SizedBox(height: 40),
            CustomButton(
              text: 'Log In',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
              },
              child: Text('Don\'t have an account? Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}

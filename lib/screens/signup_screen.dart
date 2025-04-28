import 'package:flutter/material.dart';
import 'home_screen.dart';
import '/widgets/custom_button.dart';
import '/widgets/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomTextField(label: 'Email', hint: 'Enter your email'),
            SizedBox(height: 20),
            CustomTextField(label: 'Password', hint: 'Enter your password', obscureText: true),
            SizedBox(height: 20),
            CustomTextField(label: 'Confirm Password', hint: 'Confirm your password', obscureText: true),
            SizedBox(height: 40),
            CustomButton(
              text: 'Create Account',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

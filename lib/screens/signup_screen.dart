import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'login_screen.dart';  // Додај го LoginScreen за навигација назад
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
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
                // ИКОНОТ како лого
                Icon(
                  Icons.directions_walk,
                  size: 100,
                  color: Colors.blueGrey,
                ),
                SizedBox(height: 10),
                Text(
                  "Join the journey. Step by Step.",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 30),


                CustomTextField(label: 'Email', hint: 'Enter your email'),
                SizedBox(height: 20),
                CustomTextField(label: 'Password', hint: 'Enter your password', obscureText: true),
                SizedBox(height: 20),
                CustomTextField(label: 'Confirm Password', hint: 'Confirm your password', obscureText: true),
                SizedBox(height: 30),


                // Копче за креирање акаунт
                CustomButton(
                  text: 'Create Account',
                  neon: true,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                ),

                // Копче за враќање на login страница - Преместено пред "Create Account"
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context); // Враќање назад до LoginScreen
                    },
                    child: Text(
                      "Back to login",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

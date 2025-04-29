import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool neon;

  CustomButton({
    required this.text,
    required this.onPressed,
    this.neon = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: neon ? Colors.white : Theme.of(context).primaryColor,
        foregroundColor: neon ? Colors.blueAccent : Colors.white,
        elevation: neon ? 10 : 2,
        shadowColor: neon ? Colors.blueAccent.withOpacity(0.5) : null,
        side: neon
            ? BorderSide(color: Colors.blueAccent, width: 2)
            : BorderSide.none,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        textStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: Text(text),
    );
  }
}

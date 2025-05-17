import 'package:flutter/material.dart';

class CustomButtons {
  static customElevatedButton({
    required String text,
    required VoidCallback onPressed,
    required BuildContext context,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFD00000),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          fontFamily: "Poppins",
        ),
      ),
    );
  }
}

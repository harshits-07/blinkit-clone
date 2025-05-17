import 'package:flutter/material.dart';

class CustomText {
  static customText({
    required String text,
    double? size,
    FontWeight? weight,
    String? fontFamily,
    Color? color,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: weight ?? FontWeight.normal,
        fontSize: size ?? 16.0,
        fontFamily: fontFamily ?? 'Poppins',
        color: color ?? Colors.black,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomText {
  static customText({
    required String text,
    required BuildContext context,
    double? size,
    FontWeight? weight,
    String? fontFamily,
    Color? color,
    TextAlign? textAlign,
  }) {
    var height = MediaQuery.of(context).size.height;
    return Text(
      text,
      style: TextStyle(
        fontWeight: weight ?? FontWeight.normal,
        fontSize: size ?? height * 0.0176,
        fontFamily: fontFamily ?? 'Poppins',
        color: color ?? Colors.black,
      ),
      textAlign: textAlign,
    );
  }
}

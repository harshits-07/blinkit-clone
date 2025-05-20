import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText {
  static customText({
    required String text,
    double? size,
    FontWeight? weight,
    String? fontFamily,
    Color? color,
    TextAlign? textAlign,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: weight ?? FontWeight.normal,
        fontSize: size ?? 16.0.sp,
        fontFamily: fontFamily ?? 'Poppins',
        color: color ?? Colors.black,
      ),
      textAlign: textAlign,
    );
  }
}

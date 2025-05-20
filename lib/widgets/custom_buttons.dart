import 'package:blinkit_clone/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButtons {
  static customElevatedButton({
    required String text,
    required VoidCallback onPressed,
    required BuildContext context,
    Color? bgColor,
    double? userHeight,
    double? userWidth,
    double? fontSize,
  }) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: userHeight ?? height * 0.0576,
      width: userWidth ?? width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor ?? Color(0xFFD00000),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize ?? height * 0.0198,
            fontWeight: FontWeight.w600,
            fontFamily: "Poppins",
          ),
        ),
      ),
    );
  }

  static customTextButton({
    required String text,
    required VoidCallback onPressed,
    required BuildContext context,
  }) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.0316,
      width: width * 0.1,
      child: TextButton(
        onPressed: onPressed,
        child: CustomText.customText(
          context: context,
          text: text,
          size: height * 0.011,
          color: Color(0xFF27AF34),
          weight: FontWeight.bold,
        ),
        style: TextButton.styleFrom(
          side: BorderSide(width: width * 0.0033, color: Color(0xFF27AF34)),
          backgroundColor: Colors.white,
          minimumSize: Size(width * 0.1, height * 0.0216),
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}

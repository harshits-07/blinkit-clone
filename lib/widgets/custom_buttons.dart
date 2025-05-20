import 'package:blinkit_clone/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtons {
  static customElevatedButton({
    required String text,
    required VoidCallback onPressed,
    required BuildContext context,
    Color? bgColor,
    double? height,
    double? width,
    double? fontSize,
  }) {
    return SizedBox(
      height: height ?? 48.h,
      width: width ?? double.infinity.w,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor ?? Color(0xFFD00000),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize ?? 18.sp,
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
    return SizedBox(
      height: 18.h,
      width: 30.w,
      child: TextButton(
        onPressed: onPressed,
        child: CustomText.customText(
          text: text,
          size: 8.sp,
          color: Color(0xFF27AF34),
          weight: FontWeight.bold,
        ),
        style: TextButton.styleFrom(
          side: BorderSide(width: 1.w, color: Color(0xFF27AF34)),
          backgroundColor: Colors.white,
          minimumSize: Size(30.w, 18.h),
          padding: EdgeInsets.zero.r,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
        ),
      ),
    );
  }
}

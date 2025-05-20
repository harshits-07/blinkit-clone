import 'package:blinkit_clone/core/colors.dart';
import 'package:blinkit_clone/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar {
  static customAppBar({
    required TextEditingController searchController,
    String? headerText,
    String? searchHintText,
    bool? hasGradient = true,
  }) {
    String searchHint = searchHintText ?? "'ice-cream'";
    return Stack(
      children: [
        Container(
          height: 225.h,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient:
                hasGradient!
                    ? LinearGradient(
                      colors: [AppColors.primaryColor, Colors.yellow.shade50],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )
                    : null,
            color: AppColors.primaryColor,
            borderRadius:
                hasGradient
                    ? BorderRadius.only(
                      bottomLeft: Radius.circular(8.r),
                      bottomRight: Radius.circular(8.r),
                    )
                    : null,
          ),
          child: Padding(
            padding: EdgeInsets.all(15.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 40.h),
                CustomText.customText(
                  text: headerText ?? "Blinkit in",
                  weight: FontWeight.bold,
                  fontFamily: "Bold_Poppins",
                ),
                CustomText.customText(
                  text: "16 minutes",
                  weight: FontWeight.bold,
                  fontFamily: "Bold_Poppins",
                  size: 20.sp,
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: CupertinoColors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                    ),
                    children: [
                      TextSpan(
                        text: "HOME - ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Bold_Poppins",
                        ),
                      ),
                      TextSpan(
                        text: "Harry, Krishna Colony, Palwal(HR)",
                        style: TextStyle(
                          fontSize: 14.sp,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18.h),
                SizedBox(
                  height: 48.h,
                  child: TextField(
                    controller: searchController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "search $searchHint",
                      prefixIcon: Icon(CupertinoIcons.search, size: 20.r),
                      suffixIcon: Icon(CupertinoIcons.mic_fill, size: 20.r),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 11.h,
                        horizontal: 10.w,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 15,
          bottom: 120,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 15.r,
            child: Icon(CupertinoIcons.person_solid, size: 20.r),
          ),
        ),
      ],
    );
  }
}

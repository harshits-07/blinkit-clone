import 'package:blinkit_clone/core/colors.dart';
import 'package:blinkit_clone/widgets/custom_appbar.dart';
import 'package:blinkit_clone/widgets/custom_buttons.dart';
import 'package:blinkit_clone/widgets/custom_image.dart';
import 'package:blinkit_clone/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrintScreen extends StatefulWidget {
  const PrintScreen({super.key});

  static const path = "/print-screen";

  @override
  State<PrintScreen> createState() => _PrintScreenState();
}

class _PrintScreenState extends State<PrintScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF0CE),
      body: Column(
        children: [
          CustomAppBar.customAppBar(
            searchController: searchController,
            headerText: "Print in",
            searchHintText: "'stapler'",
          ),
          Divider(height: 0.h),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.all(15.r),
            child: Column(
              children: [
                CustomText.customText(
                  text: "Print Store",
                  size: 32.sp,
                  weight: FontWeight.bold,
                  fontFamily: "Bold_Poppins",
                ),
                CustomText.customText(
                  text: "Blinkit ensures secure prints at every stage",
                  color: AppColors.fadeColor,
                  weight: FontWeight.bold,
                ),
                SizedBox(height: 60.h),
                Stack(
                  children: [
                    Container(
                      height: 165.h,
                      width: double.infinity.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 8.h,
                          horizontal: 15.w,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText.customText(
                              text: "Documents",
                              weight: FontWeight.bold,
                              size: 20.sp,
                              fontFamily: "Bold_Poppins",
                            ),
                            SizedBox(height: 10.h),
                            CustomText.customText(
                              text: "✦  Price starting at ₹3/page",
                              color: AppColors.fadeColor,
                              size: 14.sp,
                            ),
                            CustomText.customText(
                              text: "✦  Paper quality: 70 GSM",
                              color: AppColors.fadeColor,
                              size: 14.sp,
                            ),
                            CustomText.customText(
                              text: "✦  Single side prints",
                              color: AppColors.fadeColor,
                              size: 14.sp,
                            ),
                            SizedBox(height: 5.h),
                            CustomButtons.customElevatedButton(
                              text: "Upload Files",
                              onPressed: () {},
                              context: context,
                              bgColor: AppColors.linkColor,
                              height: 40.h,
                              width: 135.w,
                              fontSize: 14.sp,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10.r,
                      bottom: 40.r,
                      child: CustomImage.customImage(img: "pages.png"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

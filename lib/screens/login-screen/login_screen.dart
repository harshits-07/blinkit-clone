import 'package:blinkit_clone/core/colors.dart';
import 'package:blinkit_clone/screens/bottom-navbar/bottom_navbar_screen.dart';
import 'package:blinkit_clone/widgets/custom_buttons.dart';
import 'package:blinkit_clone/widgets/custom_image.dart';
import 'package:blinkit_clone/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const path = "/login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomImage.customImage(img: "blinkit_onboarding_image.png"),
              SizedBox(height: 20.h),
              CustomImage.customImage(img: "image_2.png"),
              SizedBox(height: 10.h),
              Text(
                "India's last minute app",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Poppins",
                ),
              ),

              Card(
                elevation: 2.5,
                child: Padding(
                  padding: EdgeInsets.all(12.0.r),
                  child: SizedBox(
                    height: 200.h,
                    width: 350.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText.customText(text: "Harry"),
                        CustomText.customText(
                          text: "8930XXXXXX",
                          color: AppColors.fadeColor,
                          weight: FontWeight.w700,
                        ),
                        SizedBox(height: 5.h),
                        CustomButtons.customElevatedButton(
                          context: context,
                          text: "Login with Zomato",
                          onPressed: () {
                            context.push(BottomNavbarScreen.path);
                          },
                        ),
                        SizedBox(height: 5.h),
                        CustomText.customText(
                          text:
                              "Access your saved address from Zomato automatically.",
                          color: AppColors.fadeColor,
                          size: 12.0.sp,
                        ),
                        SizedBox(height: 20.h),
                        TextButton(
                          onPressed: () {},
                          child: CustomText.customText(
                            text: "or Login with Phone Number",
                            color: AppColors.linkColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

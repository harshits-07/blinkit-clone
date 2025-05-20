import 'package:blinkit_clone/core/colors.dart';
import 'package:blinkit_clone/screens/bottom-navbar/bottom_navbar_screen.dart';
import 'package:blinkit_clone/widgets/custom_buttons.dart';
import 'package:blinkit_clone/widgets/custom_image.dart';
import 'package:blinkit_clone/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const path = "/login";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.046),
            CustomImage.customImage(img: "blinkit_onboarding_image.png"),
            SizedBox(height: height * 0.02),
            CustomImage.customImage(img: "image_2.png"),
            SizedBox(height: height * 0.012),
            Text(
              "India's last minute app",
              style: TextStyle(
                fontSize: height * 0.022,
                fontWeight: FontWeight.w700,
                fontFamily: "Poppins",
              ),
            ),

            Card(
              elevation: 2.5,
              child: Padding(
                padding: EdgeInsets.all(width * 0.04),
                child: SizedBox(
                  height: height * 0.2,
                  width: width * 0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText.customText(context: context, text: "Harry"),
                      CustomText.customText(
                        context: context,
                        text: "8930XXXXXX",
                        color: AppColors.fadeColor,
                        weight: FontWeight.w700,
                      ),
                      SizedBox(height: height * 0.006),
                      CustomButtons.customElevatedButton(
                        context: context,
                        text: "Login with Zomato",
                        onPressed: () {
                          context.push(BottomNavbarScreen.path);
                        },
                      ),
                      SizedBox(height: height * 0.006),
                      CustomText.customText(
                        context: context,
                        text:
                            "Access your saved address from Zomato automatically.",
                        color: AppColors.fadeColor,
                        size: height * 0.012,
                      ),
                      SizedBox(height: height * 0.001),
                      TextButton(
                        onPressed: () {},
                        child: CustomText.customText(
                          context: context,
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
    );
  }
}

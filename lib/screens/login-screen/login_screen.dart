import 'package:blinkit_clone/core/colors.dart';
import 'package:blinkit_clone/widgets/custom_buttons.dart';
import 'package:blinkit_clone/widgets/custom_image.dart';
import 'package:blinkit_clone/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomImage.customImage(img: "blinkit_onboarding_image.png"),
              SizedBox(height: 20),
              CustomImage.customImage(img: "image_2.png"),
              SizedBox(height: 10),
              Text(
                "India's last minute app",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Poppins",
                ),
              ),

              Card(
                elevation: 2.5,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SizedBox(
                    height: 200,
                    width: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText.customText(text: "Harry"),
                        CustomText.customText(
                          text: "8930XXXXXX",
                          color: AppColors.fadeColor,
                          weight: FontWeight.w700,
                        ),
                        SizedBox(height: 5),
                        CustomButtons.customElevatedButton(
                          context: context,
                          text: "Login with Zomato",
                          onPressed: () {},
                        ),
                        SizedBox(height: 5),
                        CustomText.customText(
                          text:
                              "Access your saved address from Zomato automatically.",
                          color: AppColors.fadeColor,
                          size: 12.0,
                        ),
                        SizedBox(height: 20),
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

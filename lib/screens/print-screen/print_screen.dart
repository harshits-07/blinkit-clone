import 'package:blinkit_clone/core/colors.dart';
import 'package:blinkit_clone/widgets/custom_appbar.dart';
import 'package:blinkit_clone/widgets/custom_buttons.dart';
import 'package:blinkit_clone/widgets/custom_image.dart';
import 'package:blinkit_clone/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                CustomText.customText(
                  text: "Print Store",
                  size: 32,
                  weight: FontWeight.bold,
                  fontFamily: "Bold_Poppins",
                ),
                CustomText.customText(
                  text: "Blinkit ensures secure prints at every stage",
                  color: AppColors.fadeColor,
                  weight: FontWeight.bold,
                ),
                SizedBox(height: 60),
                Stack(
                  children: [
                    Container(
                      height: 165,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 15,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText.customText(
                              text: "Documents",
                              weight: FontWeight.bold,
                              size: 20,
                              fontFamily: "Bold_Poppins",
                            ),
                            SizedBox(height: 10),
                            CustomText.customText(
                              text: "✦  Price starting at ₹3/page",
                              color: AppColors.fadeColor,
                              size: 14,
                            ),
                            CustomText.customText(
                              text: "✦  Paper quality: 70 GSM",
                              color: AppColors.fadeColor,
                              size: 14,
                            ),
                            CustomText.customText(
                              text: "✦  Single side prints",
                              color: AppColors.fadeColor,
                              size: 14,
                            ),
                            SizedBox(height: 5),
                            CustomButtons.customElevatedButton(
                              text: "Upload Files",
                              onPressed: () {},
                              context: context,
                              bgColor: AppColors.linkColor,
                              height: 40,
                              width: 135,
                              fontSize: 14,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 40,
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

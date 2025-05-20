import 'package:blinkit_clone/core/colors.dart';
import 'package:blinkit_clone/widgets/custom_appbar.dart';
import 'package:blinkit_clone/widgets/custom_buttons.dart';
import 'package:blinkit_clone/widgets/custom_image.dart';
import 'package:blinkit_clone/widgets/custom_text.dart';
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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFFBF0CE),
      body: Column(
        children: [
          CustomAppBar.customAppBar(
            searchController: searchController,
            context: context,
            headerText: "Print in",
            searchHintText: "'stapler'",
          ),
          Divider(height: height * 0),
          SizedBox(height: height * 0.03),
          Padding(
            padding: EdgeInsets.all(width * 0.05),
            child: Column(
              children: [
                CustomText.customText(
                  context: context,
                  text: "Print Store",
                  size: height * 0.0352,
                  weight: FontWeight.bold,
                  fontFamily: "Bold_Poppins",
                ),
                CustomText.customText(
                  context: context,
                  text: "Blinkit ensures secure prints at every stage",
                  color: AppColors.fadeColor,
                  weight: FontWeight.bold,
                ),
                SizedBox(height: height * 0.06),
                Stack(
                  children: [
                    Container(
                      height: height * 0.198,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: height * 0.013,
                          horizontal: width * 0.05,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText.customText(
                              context: context,
                              text: "Documents",
                              weight: FontWeight.bold,
                              size: height * 0.022,
                              fontFamily: "Bold_Poppins",
                            ),
                            SizedBox(height: height * 0.012),
                            CustomText.customText(
                              context: context,
                              text: "✦  Price starting at ₹3/page",
                              color: AppColors.fadeColor,
                              size: height * 0.0155,
                            ),
                            CustomText.customText(
                              context: context,
                              text: "✦  Paper quality: 70 GSM",
                              color: AppColors.fadeColor,
                              size: height * 0.0155,
                            ),
                            CustomText.customText(
                              context: context,
                              text: "✦  Single side prints",
                              color: AppColors.fadeColor,
                              size: height * 0.0155,
                            ),
                            SizedBox(height: height * 0.01),
                            CustomButtons.customElevatedButton(
                              text: "Upload Files",
                              onPressed: () {},
                              context: context,
                              bgColor: AppColors.linkColor,
                              userHeight: height * 0.045,
                              userWidth: width * 0.35,
                              fontSize: height * 0.0155,
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

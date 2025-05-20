import 'package:blinkit_clone/core/colors.dart';
import 'package:blinkit_clone/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar {
  static customAppBar({
    required TextEditingController searchController,
    required BuildContext context,
    String? headerText,
    String? searchHintText,
    bool? hasGradient = true,
  }) {
    String searchHint = searchHintText ?? "'ice-cream'";
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          height: height * 0.255,
          width: width,
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
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    )
                    : null,
          ),
          child: Padding(
            padding: EdgeInsets.all(width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: height * 0.04),
                CustomText.customText(
                  context: context,
                  text: headerText ?? "Blinkit in",
                  weight: FontWeight.bold,
                  fontFamily: "Bold_Poppins",
                ),
                CustomText.customText(
                  context: context,
                  text: "16 minutes",
                  weight: FontWeight.bold,
                  fontFamily: "Bold_Poppins",
                  size: height * 0.022,
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: CupertinoColors.black,
                      fontSize: height * 0.0176,
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
                          fontSize: height * 0.0155,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.0216),
                SizedBox(
                  height: height * 0.0576,
                  child: TextField(
                    controller: searchController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "search $searchHint",
                      prefixIcon: Icon(
                        CupertinoIcons.search,
                        size: height * 0.02,
                      ),
                      suffixIcon: Icon(
                        CupertinoIcons.mic_fill,
                        size: height * 0.02,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: height * 0.0165,
                        horizontal: width * 0.0333,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: width * 0.05,
          bottom: height * 0.13,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 15,
            child: Icon(CupertinoIcons.person_solid, size: height * 0.02),
          ),
        ),
      ],
    );
  }
}

import 'package:blinkit_clone/core/colors.dart';
import 'package:blinkit_clone/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar {
  static customAppBar({
    required TextEditingController searchController,
    String? headerText,
    String? searchHintText,
  }) {
    String searchHint = searchHintText ?? "'ice-cream'";
    return Stack(
      children: [
        Container(
          height: 225,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 40),
                CustomText.customText(
                  text: headerText ?? "Blinkit in",
                  weight: FontWeight.bold,
                  fontFamily: "Bold_Poppins",
                ),
                CustomText.customText(
                  text: "16 minutes",
                  weight: FontWeight.bold,
                  fontFamily: "Bold_Poppins",
                  size: 20,
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: CupertinoColors.black,
                      fontSize: 16,
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
                          fontSize: 14,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18),
                SizedBox(
                  height: 48,
                  child: TextField(
                    controller: searchController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "search $searchHint",
                      prefixIcon: Icon(CupertinoIcons.search, size: 20),
                      suffixIcon: Icon(CupertinoIcons.mic_fill, size: 20),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 11,
                        horizontal: 10,
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
          right: 15,
          bottom: 120,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 15,
            child: Icon(CupertinoIcons.person_solid, size: 20),
          ),
        ),
      ],
    );
  }
}

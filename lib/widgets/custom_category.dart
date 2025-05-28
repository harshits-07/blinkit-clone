import 'package:blinkit_clone/core/colors.dart';
import 'package:blinkit_clone/data/models/cart_item_model.dart';
import 'package:blinkit_clone/widgets/custom_image.dart';
import 'package:blinkit_clone/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomCategoryUI {
  static customCategoryUI({
    required BuildContext context,
    required String categoryTitle,
    required List<CartItemModel> items,
  }) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText.customText(
          context: context,
          text: categoryTitle,
          size: height * 0.022,
          fontFamily: "Bold_Poppins",
          weight: FontWeight.bold,
        ),

        SizedBox(height: height * 0.01),
        GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,

          physics: ClampingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: height * 0.012,
            mainAxisSpacing: height * 0.012,
            childAspectRatio: 0.62,
          ),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Container(
                    height: height * 0.1,
                    width: width * 0.19,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.imgBackgroundColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(height * 0.01),
                      child: SizedBox(
                        height: height * 0.06,
                        width: width * 0.15,
                        child: CustomImage.customImage(
                          img: items[index].image.toString(),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.006),
                Text(
                  "${items[index].name}",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: height * 0.013,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
              ],
            );
          },
          itemCount: items.length,
        ),
      ],
    );
  }
}

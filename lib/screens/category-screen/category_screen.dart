import 'package:blinkit_clone/core/colors.dart';
import 'package:blinkit_clone/data/models/cart_item_model.dart';
import 'package:blinkit_clone/widgets/custom_appbar.dart';
import 'package:blinkit_clone/widgets/custom_image.dart';
import 'package:blinkit_clone/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  static const path = "/category-screen";

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  TextEditingController searchController = TextEditingController();
  List<CartItemModel> items = [
    CartItemModel(image: "image 41.png", name: "Vegetables & Fruits"),
    CartItemModel(image: "image 42.png", name: "Vegetables & Fruits"),
    CartItemModel(image: "image 43.png", name: "Vegetables & Fruits"),
    CartItemModel(image: "image 44.png", name: "Vegetables & Fruits"),
    CartItemModel(image: "image 45.png", name: "Vegetables & Fruits"),
    CartItemModel(image: "image 21.png", name: "Vegetables & Fruits"),
    CartItemModel(image: "image 22.png", name: "Vegetables & Fruits"),
    CartItemModel(image: "image 23.png", name: "Vegetables & Fruits"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar.customAppBar(searchController: searchController),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomText.customText(
                      text: "Grocery & Kitchen",
                      size: 20,
                      fontFamily: "Bold_Poppins",
                      weight: FontWeight.bold,
                    ),
                    SizedBox(height: 8),
                    GridView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      ),
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 78,
                                width: 71,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.imgBackgroundColor,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: CustomImage.customImage(
                                    img: "${items[index].image}",
                                  ),
                                ),
                              ),
                            ),
                            // Text(
                            //   "${items[index].name}",
                            //   style: TextStyle(
                            //     fontFamily: "Poppins",
                            //     fontSize: 14,
                            //     fontWeight: FontWeight.bold,
                            //     overflow: TextOverflow.ellipsis,
                            //   ),
                            //   maxLines: 2,
                            // ),
                          ],
                        );
                      },
                      itemCount: items.length,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:blinkit_clone/core/colors.dart';
import 'package:blinkit_clone/data/models/cart_item_model.dart';
import 'package:blinkit_clone/widgets/custom_appbar.dart';
import 'package:blinkit_clone/widgets/custom_category.dart';
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
  List<CartItemModel> groceryItems = [
    CartItemModel(image: "image 41.png", name: "Vegetables & Fruits"),
    CartItemModel(image: "image 42.png", name: "Atta, Dal & Rice"),
    CartItemModel(image: "image 43.png", name: "Oil, Ghee & Masala"),
    CartItemModel(image: "image 44.png", name: "Dairy, Bread & Milk"),
    CartItemModel(image: "image 45.png", name: "Biscuits & Bakery"),
    CartItemModel(image: "image 21.png", name: "Dry Fruits & Cereals"),
    CartItemModel(image: "image 22.png", name: "Kitchen & Appliances"),
    CartItemModel(image: "image 23.png", name: "Tea & Coffees"),
  ];

  List<CartItemModel> snacksItems = [
    CartItemModel(image: "image 31.png", name: "Chips & Namkeens"),
    CartItemModel(image: "image 32.png", name: "Sweets & Chocolates"),
    CartItemModel(image: "image 33.png", name: "Drinks & Juices"),
    CartItemModel(image: "image 34.png", name: "Sauces & Spreads"),
  ];

  List<CartItemModel> householdItems = [
    CartItemModel(image: "image 36.png", name: "Cleaners & Repellents"),
    CartItemModel(image: "image 37.png", name: "Cleaners & Repellents"),
    CartItemModel(image: "image 38.png", name: "Cleaners & Repellents"),
    CartItemModel(image: "image 39.png", name: "Cleaners & Repellents"),
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar.customAppBar(
            searchController: searchController,
            context: context,
          ),
          Divider(height: height * 0),
          SizedBox(height: height * 0.02),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: height * 0.009),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomCategoryUI.customCategoryUI(
                          context: context,
                          categoryTitle: "Grocery & Kitchen",
                          items: groceryItems,
                        ),
                        SizedBox(height: height * 0.02),
                        CustomCategoryUI.customCategoryUI(
                          context: context,
                          categoryTitle: "Snacks & Drinks",
                          items: snacksItems,
                        ),
                        SizedBox(height: height * 0.02),
                        CustomCategoryUI.customCategoryUI(
                          context: context,
                          categoryTitle: "Household Essentials",
                          items: householdItems,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Container(
                    padding: EdgeInsets.all(width * 0.05),
                    color: Colors.grey.shade200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText.customText(
                          context: context,
                          text: "India's Last minute app ❤",
                          size: height * 0.0495,
                          color: AppColors.fadeColor,
                          fontFamily: "Bold_Poppins",
                          weight: FontWeight.bold,
                        ),
                        Divider(),
                        CustomText.customText(
                          context: context,
                          text: "Blinkit",
                          size: height * 0.0275,
                          color: AppColors.fadeColor,
                          fontFamily: "Bold_Poppins",
                          weight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

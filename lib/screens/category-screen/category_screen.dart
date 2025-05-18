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

  customCategoryUI({
    required BuildContext context,
    required String categoryTitle,
    required List<CartItemModel> items,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText.customText(
          text: categoryTitle,
          size: 20,
          fontFamily: "Bold_Poppins",
          weight: FontWeight.bold,
        ),
        SizedBox(height: 8),
        GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,

          physics: ClampingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7,
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
                      child: SizedBox(
                        height: 60,
                        width: 60,
                        child: CustomImage.customImage(
                          img: items[index].image.toString(),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "${items[index].name}",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar.customAppBar(searchController: searchController),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 10.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        customCategoryUI(
                          context: context,
                          categoryTitle: "Grocery & Kitchen",
                          items: groceryItems,
                        ),
                        SizedBox(height: 20),
                        customCategoryUI(
                          context: context,
                          categoryTitle: "Snacks & Drinks",
                          items: snacksItems,
                        ),
                        SizedBox(height: 20),
                        customCategoryUI(
                          context: context,
                          categoryTitle: "Household Essentials",
                          items: householdItems,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(15),
                    color: Colors.grey.shade200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText.customText(
                          text: "India's Last minute app ❤",
                          size: 45,
                          color: AppColors.fadeColor,
                          fontFamily: "Bold_Poppins",
                          weight: FontWeight.bold,
                        ),
                        Divider(),
                        CustomText.customText(
                          text: "Blinkit",
                          size: 25,
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

import 'package:blinkit_clone/core/colors.dart';
import 'package:blinkit_clone/data/models/cart_item_model.dart';
import 'package:blinkit_clone/widgets/custom_appbar.dart';
import 'package:blinkit_clone/widgets/custom_buttons.dart';
import 'package:blinkit_clone/widgets/custom_category.dart';
import 'package:blinkit_clone/widgets/custom_image.dart';
import 'package:blinkit_clone/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const path = "/home-screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  List<CartItemModel> adItems = [
    CartItemModel(name: "Cooking Essentials", image: "cooking_essentials.png"),
    CartItemModel(name: "Home Needs", image: "home_needs.png"),
    CartItemModel(name: "Craving Corner", image: "craving_corner.png"),
    CartItemModel(name: "Personal Care & beauty", image: "self_care.png"),
  ];
  List<CartItemModel> sellerItems = [
    CartItemModel(
      image: "potato.jpg",
      name: "Potato(Aloo)",
      price: 30.0,
      estimatedTime: "12 MINS",
    ),
    CartItemModel(
      image: "coffee.jpg",
      name: "Nescafe Coffee",
      estimatedTime: "12 MINS",
      price: 80.0,
    ),
    CartItemModel(
      image: "oats.png",
      name: "kellogg's Oats",
      price: 150.0,
      estimatedTime: "12 MINS",
    ),
    CartItemModel(
      image: "bourbon.png",
      name: "Britannia Bourbon Biscuit",
      price: 40.0,
      estimatedTime: "15 MINS",
    ),
  ];
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CustomAppBar.customAppBar(
                searchController: searchController,
                hasGradient: false,
                context: context,
              ),
              Divider(height: height * 0),

              Container(
                height: height * 0.255,
                width: width,
                color: AppColors.primaryColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.015,
                    vertical: height * 0.015,
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: height * 0.065,
                            width: width * 0.5,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green.shade700,
                            ),
                            child: Column(
                              children: [
                                CustomText.customText(
                                  context: context,
                                  text: "FLAT 10% OFF",
                                  color: Colors.white,
                                  size: height * 0.022,
                                  fontFamily: "Bold_Poppins",
                                ),
                                Divider(
                                  height: height * 0.003,
                                  endIndent: width * 0.03,
                                  indent: width * 0.03,
                                  thickness: height * 0.0006,
                                ),
                                SizedBox(height: height * 0.006),
                                CustomText.customText(
                                  context: context,
                                  text: "ON THESE DAILY ESSENTIALS",
                                  size: height * 0.01425,
                                  fontFamily: "Bold_Poppins",
                                  color: AppColors.primaryColor,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: height * 0.0055),
                          CustomText.customText(
                            context: context,
                            text: "GET UP TO ₹200 OFF",
                            color: Colors.brown.shade400,
                            fontFamily: "Bold_Poppins",
                            size: height * 0.013,
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.012),
                      SizedBox(
                        height: height * 0.12,
                        child: ListView.builder(
                          //       shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              width: width * 0.25,
                              margin: EdgeInsets.symmetric(
                                horizontal: width * 0.015,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xfffcefab),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: height * 0.005,
                                      horizontal: width * 0.01,
                                    ),
                                    child: Text(
                                      "${adItems[index].name}",
                                      style: TextStyle(
                                        fontSize: height * 0.011,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Poppins",
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      ),
                                      child: CustomImage.customImage(
                                        img: adItems[index].image.toString(),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          itemCount: adItems.length,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: height * 0.009),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: height * 0.01),
                      child: CustomText.customText(
                        context: context,
                        text: "BestSellers",
                        weight: FontWeight.bold,
                        size: height * 0.022,
                      ),
                    ),

                    GridView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: ClampingScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // Reduce from 3 to 2 columns
                        mainAxisSpacing: height*0.006,
                        crossAxisSpacing: height*0.006,
                        childAspectRatio: 0.71,
                      ),
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: height * 0.216,
                          child: Card(
                            elevation: 0,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(width * 0.02),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: SizedBox(
                                    height: height * 0.135,
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          child: CustomImage.customImage(
                                            img: "${sellerItems[index].image}",
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: width * 0.14,
                                            top: height * 0.103,
                                          ),
                                          child: CustomButtons.customTextButton(
                                            text: "ADD",
                                            onPressed: () {},
                                            context: context,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ),
                                  SizedBox(height: height*0.008,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [Text(
                                    "${sellerItems[index].name}",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: height * 0.0155,
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    maxLines: 1,
                                  ),
                                  SizedBox(height: 0.006),
                                  Row(
                                    children: [
                                      Icon(
                                        CupertinoIcons.time_solid,
                                        size: height * 0.015,
                                        color: Colors.brown,
                                      ),
                                      SizedBox(width: width * 0.01),
                                      CustomText.customText(
                                        context: context,
                                        text:
                                            "${sellerItems[index].estimatedTime}",
                                        color: AppColors.fadeColor,
                                      ),
                                    ],
                                  ),
                                  CustomText.customText(
                                    context: context,
                                    text: "₹ ${sellerItems[index].price}",
                                    weight: FontWeight.bold,
                                  ),],)
                                  
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: sellerItems.length,
                    ),
                    SizedBox(height: height * 0.02),
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
              SizedBox(height: height * 0.020),
              Container(
                height: height * 0.05,
                width: width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText.customText(
                      context: context,
                      text: "See all products",
                      size: height * 0.0155,
                    ),
                    SizedBox(width: width * 0.02),
                    Icon(CupertinoIcons.right_chevron, size: height * 0.015),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

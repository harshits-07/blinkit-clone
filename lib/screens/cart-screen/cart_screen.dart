import 'package:blinkit_clone/core/colors.dart';
import 'package:blinkit_clone/data/models/cart_item_model.dart';
import 'package:blinkit_clone/widgets/custom_appbar.dart';
import 'package:blinkit_clone/widgets/custom_buttons.dart';
import 'package:blinkit_clone/widgets/custom_image.dart';
import 'package:blinkit_clone/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  static const path = "/cart-screen";

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  TextEditingController searchController = TextEditingController();
  List<CartItemModel> items = [
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
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomAppBar.customAppBar(
            searchController: searchController,
            context: context,
          ),
          Divider(height: height * 0),
          SizedBox(height: height * 0.018),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomImage.customImage(img: "shopping-cart.png"),
                  SizedBox(height: height * 0.012),
                  CustomText.customText(
                    context: context,
                    text: "Reordering will be easy",
                    weight: FontWeight.bold,
                    size: height * 0.022,
                    fontFamily: "Bold_Poppins",
                  ),
                  CustomText.customText(
                    context: context,
                    text: "Items you order will show up here so you can buy",
                    size: height * 0.013,
                  ),
                  CustomText.customText(
                    context: context,
                    text: "them again easily.",
                    size: height * 0.013,
                  ),

                  SizedBox(height: height * 0.026),
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
                                            img: "${items[index].image}",
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
                                    "${items[index].name}",
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
                                            "${items[index].estimatedTime}",
                                        color: AppColors.fadeColor,
                                      ),
                                    ],
                                  ),
                                  CustomText.customText(
                                    context: context,
                                    text: "₹ ${items[index].price}",
                                    weight: FontWeight.bold,
                                  ),],)
                                  
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: items.length,
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

import 'package:blinkit_clone/core/colors.dart';
import 'package:blinkit_clone/data/models/cart_item_model.dart';
import 'package:blinkit_clone/widgets/custom_appbar.dart';
import 'package:blinkit_clone/widgets/custom_buttons.dart';
import 'package:blinkit_clone/widgets/custom_image.dart';
import 'package:blinkit_clone/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      image: "milk.png",
      name: "Amul Taaza Fresh Toned Milk(500ml)",
      estimatedTime: "10 MINS",
      price: 27.0,
    ),
    CartItemModel(
      image: "potato.png",
      name: "Potato(Aloo)",
      price: 30.0,
      estimatedTime: "12 MINS",
    ),
    CartItemModel(
      image: "tomato.png",
      name: "Hybrid Tomato",
      price: 40.0,
      estimatedTime: "15 MINS",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomAppBar.customAppBar(searchController: searchController),
          Divider(height: 0.h),
          SizedBox(height: 20.h),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomImage.customImage(img: "shopping-cart.png"),
                  SizedBox(height: 10.h),
                  CustomText.customText(
                    text: "Reordering will be easy",
                    weight: FontWeight.bold,
                    size: 20.sp,
                    fontFamily: "Bold_Poppins",
                  ),
                  CustomText.customText(
                    text: "Items you order will show up here so you can buy",
                    size: 12.sp,
                  ),
                  CustomText.customText(
                    text: "them again easily.",
                    size: 12.sp,
                  ),

                  SizedBox(height: 30.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 8.r),
                          child: CustomText.customText(
                            text: "BestSellers",
                            weight: FontWeight.bold,
                            size: 20.sp,
                          ),
                        ),

                        GridView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          physics: ClampingScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3, // Reduce from 3 to 2 columns
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 5,
                                childAspectRatio: 0.55,
                              ),
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: 180.h,
                              child: Card(
                                elevation: 0,
                                clipBehavior: Clip.antiAlias,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0.r),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      SizedBox(
                                        height: 120.h,
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10.r),
                                              child: CustomImage.customImage(
                                                img: "${items[index].image}",
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 66,
                                                top: 95,
                                              ),
                                              child:
                                                  CustomButtons.customTextButton(
                                                    text: "ADD",
                                                    onPressed: () {},
                                                    context: context,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 5.h),
                                      Text(
                                        "${items[index].name}",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        maxLines: 1,
                                      ),
                                      SizedBox(height: 5.h),
                                      Row(
                                        children: [
                                          Icon(
                                            CupertinoIcons.time_solid,
                                            size: 18.r,
                                            color: Colors.brown,
                                          ),
                                          SizedBox(width: 4.w),
                                          CustomText.customText(
                                            text:
                                                "${items[index].estimatedTime}",
                                            color: AppColors.fadeColor,
                                          ),
                                        ],
                                      ),
                                      CustomText.customText(
                                        text: "₹ ${items[index].price}",
                                        weight: FontWeight.bold,
                                      ),
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

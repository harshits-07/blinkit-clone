import 'package:blinkit_clone/core/colors.dart';
import 'package:blinkit_clone/data/models/cart_item_model.dart';
import 'package:blinkit_clone/widgets/custom_appbar.dart';
import 'package:blinkit_clone/widgets/custom_image.dart';
import 'package:blinkit_clone/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomAppBar.customAppBar(searchController: searchController),
            Divider(height: 0.h),
            Container(
              height: height * 0.245,
              width: width,
              color: AppColors.primaryColor,
              child: Padding(
                padding: EdgeInsets.all(10.0.r),
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
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.green.shade700,
                          ),
                          child: Column(
                            children: [
                              CustomText.customText(
                                text: "FLAT 10% OFF",
                                color: Colors.white,
                                size: 20.sp,
                                fontFamily: "Bold_Poppins",
                              ),
                              Divider(
                                height: 0.5.h,
                                endIndent: 12.r,
                                indent: 12.r,
                                thickness: 0.2.h,
                              ),
                              SizedBox(height: 6.h),
                              CustomText.customText(
                                text: "ON THESE DAILY ESSENTIALS",
                                size: 13.sp,
                                fontFamily: "Bold_Poppins",
                                color: AppColors.primaryColor,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5.h),
                        CustomText.customText(
                          text: "GET UP TO ₹200 OFF",
                          color: Colors.brown.shade400,

                          fontFamily: "Bold_Poppins",
                          size: 12.sp,
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      height: height * 0.12,
                      child: ListView.builder(
                        //       shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            width: width * 0.25,
                            margin: EdgeInsets.symmetric(horizontal: 5.w),
                            decoration: BoxDecoration(
                              color: Color(0xfffcefab),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(3.0.r),
                                  child: Text(
                                    "${adItems[index].name}",
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10.r),
                                      bottomLeft: Radius.circular(10.r),
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
          ],
        ),
      ),
    );
  }
}

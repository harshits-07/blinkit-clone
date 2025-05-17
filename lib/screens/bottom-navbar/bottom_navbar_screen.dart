import 'package:blinkit_clone/core/colors.dart';
import 'package:blinkit_clone/screens/cart-screen/cart_screen.dart';
import 'package:blinkit_clone/screens/category-screen/category_screen.dart';
import 'package:blinkit_clone/screens/home-screen/home_screen.dart';
import 'package:blinkit_clone/screens/print-screen/print_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  static const path = "/bottom-navbar-screen";
  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        unselectedItemColor: Colors.black,
        selectedItemColor: AppColors.secondaryColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_fill),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cart_fill),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_grid_2x2_fill),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.printer_fill),
            label: "Print",
          ),
        ],
      ),
    );
  }
}

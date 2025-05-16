import 'dart:async';

import 'package:blinkit_clone/core/colors.dart';
import 'package:blinkit_clone/screens/login-screen/login_screen.dart';
import 'package:blinkit_clone/widgets/custom_image.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Center(child: CustomImage.customImage(img: "image_1.png")),
    );
  }
}

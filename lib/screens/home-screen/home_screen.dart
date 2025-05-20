import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const path = "/home-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "width: ${MediaQuery.of(context).size.width}, and height: ${MediaQuery.of(context).size.height}",
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PrintScreen extends StatelessWidget {
  const PrintScreen({super.key});

  static const path = "/print-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Print Screen")));
  }
}

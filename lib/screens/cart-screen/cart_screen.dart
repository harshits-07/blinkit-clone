import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static const path = "/cart-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Cart Screen")));
  }
}

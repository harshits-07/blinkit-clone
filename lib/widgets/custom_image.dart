import 'package:flutter/material.dart';

class CustomImage {
  static customImage({required String img}) {
    return Image.asset("assets/images/$img", fit: BoxFit.cover);
  }
}

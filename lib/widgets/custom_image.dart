import 'package:flutter/material.dart';

class CustomImage {
  static customImage(String img) {
    return Image.asset("assets/images/$img", fit: BoxFit.cover);
  }
}

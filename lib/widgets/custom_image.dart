import 'package:flutter/material.dart';

class CustomImage {
  static customImage({required String img, BoxFit? fit}) {
    return Image.asset("assets/images/$img", fit: fit ?? BoxFit.cover);
  }
}

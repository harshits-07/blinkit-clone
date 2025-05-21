import 'package:flutter/material.dart';

class CustomImage {
  static customImage({required String img, BoxFit? fit,double? height,double? width}) {
    return Image.asset("assets/images/$img", fit: fit ?? BoxFit.fitWidth,height: height,width: width,);
  }
}

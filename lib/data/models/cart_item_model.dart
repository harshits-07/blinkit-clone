// To parse this JSON data, do
//
//     final cartItemModel = cartItemModelFromJson(jsonString);

import 'dart:convert';

CartItemModel cartItemModelFromJson(String str) =>
    CartItemModel.fromJson(json.decode(str));

String cartItemModelToJson(CartItemModel data) => json.encode(data.toJson());

class CartItemModel {
  String? image;
  String? name;
  String? estimatedTime;
  double? price;

  CartItemModel({this.image, this.name, this.estimatedTime, this.price});

  factory CartItemModel.fromJson(Map<String, dynamic> json) => CartItemModel(
    image: json["image"],
    name: json["name"],
    estimatedTime: json["estimated time"],
    price: json["price"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "name": name,
    "estimated time": estimatedTime,
    "price": price,
  };
}

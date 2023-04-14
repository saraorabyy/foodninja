import 'dart:convert';

import '../Rating.dart';
List<ProductModel>productModelFromJson (String str)=>
    List<ProductModel>.from(
        json.decode(str).map((x) =>ProductModel.fromJson(x)));

String productModelTojson(List<ProductModel> data)=>
    json.encode(List<dynamic>.from(data.map((x)=>x.toJson())));

class ProductModel {
  ProductModel({
    required this.id,
    required this.title,
    required  this.price,
    required  this.description,
    required  this.category,
    required  this.image,
    required  this.rating,});

  ProductModel.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
    rating = (json['rating'] != null ? Rating.fromJson(json['rating']) : null)!;
  }
  int ?id;
  String ?title;
  dynamic price;
  String ?description;
  String ?category;
  String ?image;
  Rating ?rating;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['price'] = price;
    map['description'] = description;
    map['category'] = category;
    map['image'] = image;
    final rating = this.rating;
    if (rating != null) {
      map['rating'] = rating.toJson();
    }
    return map;
  }

}
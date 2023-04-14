// import 'Data.dart';
// import 'dart:convert';
//
// List <ProductModel> productModelFromJson(String str) =>
//     List <ProductModel>.from(
//       json.decode(str).map((x)=>ProductModel.fromJson(x))
//     );
//
// String productModelToJson(List <ProductModel> data) => json.encode(List<dynamic>.from(data.map((x) =>
//    x.toJson())));
//
// class ProductModel {
//   ProductModel({
//     required  this.status,
//     required  this.data,});
//
//   ProductModel.fromJson(dynamic json) {
//     status = json['$status'];
//     if (json['data'] != null) {
//       data = [];
//       json['data'].forEach((v) {
//         data!.add(Data.fromJson(v));
//       });
//     }
//   }
//   bool? status;
//   List<Data> ?data;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['$status'] = status;
//     if (data != null) {
//       map['data'] = data!.map((v) => v.toJson()).toList();
//     }
//     return map;
//   }
//
// }
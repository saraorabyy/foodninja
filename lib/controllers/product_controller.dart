// import 'dart:convert';
// import 'package:get/get_state_manager/src/simple/get_controllers.dart';
// import 'package:http/http.dart' as http;
// import '../models/product_model/Data.dart';
// import '../models/product_model/ProductModel.dart';
//
// class ProductController extends GetxController{
//
//   List <Data>list=[];
//
//   getProduct()async {
//     final response = await http.get(Uri.parse(
//         'https://178.128.138.57/api/food'));
//     if (response.statusCode == 200) {
//       print(response.body);
//       return ProductModel.fromJson(jsonDecode(response.body));
//     }
//   }
// }
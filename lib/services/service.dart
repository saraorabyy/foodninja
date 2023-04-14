import 'package:http/http.dart' as http;

import '../test/product_model/model.dart';

class ProductServices {
  static Future getProduct() async {
    var response = await http.get(Uri.parse('https://fakestoreapi.com/products'));

    if (response.statusCode == 200) {
      var jsonData = response.body;
      return productModelFromJson(jsonData);

    } else {
      return  Exception("Failed to load product");
    }
  }
}

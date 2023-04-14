import 'package:http/http.dart' as http;
import '../models/category_model.dart';
import '../test/product_model/model.dart';


class CategoryServices{
 static Future<List<String>> getCategory()async{
  var response= await http.get(Uri.parse('https://fakestoreapi.com/products/categories'));
  if(response.statusCode==200){
   var jsonData=response.body;

   return categoryModelFromJson(jsonData);

  }
  else{
   return throw Exception('failed to load product');

  }
 }
}

class AllCategoriesServices {
 static Future <List<ProductModel>>getAllCategories(String Category) async {
  var response = await http.get(Uri.parse('https://fakestoreapi.com/products/category/$Category'));

  if (response.statusCode == 200) {
   var jsonData = response.body;
   return productModelFromJson(jsonData);

  } else {
   return throw Exception("Failed to load product");
  }
 }
}
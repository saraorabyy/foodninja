import 'dart:convert';

import 'package:finalnenja/services/service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import '../models/restaurant_model/RestaurantModel.dart';
import '../services/category_services.dart';
import '../test/product_model/model.dart';
import '../utils/my_string.dart';


class HomeController extends GetxController{
  var productList=<ProductModel>[].obs;
  var restaurantList=<RestaurantModel>[].obs;
  var favoritesList=<ProductModel>[].obs;
  var stoarge = GetStorage();
  var isLoading=true.obs;
  var searchList=<ProductModel>[].obs;
  TextEditingController searchController=TextEditingController();
  var categoryNameList=<String>[].obs;
  var isCategoryLoading=false.obs;
  var CategoryList=<ProductModel>[].obs;
  var isAllCategory = false.obs;
  List products = [].obs ;
  List< RestaurantModel> item = [] ;


  @override
  void onInit() {
    super.onInit();
    getProducts();
    getCategories();
    getRestaurant();
    loadProductsFromrestaurant();
  }

  void getProducts()async{
    var products= await ProductServices.getProduct();
    try{
      isLoading(true);
      if(products.isNotEmpty){
        productList.addAll(products);
      }}
    finally{
      isLoading(false);

    }
  }

   getRestaurant()async{
      try {
        var headers = {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          'Authorization': 'Bearer 270|0W3kSnlmK0kuxpxMi1PHbz2r0I4M6Xhyd0FmmTjt'
        };
        final response = await http.get(Uri.parse(
            '$BaseUrl/restaurent'), headers: headers);


        if (response.statusCode == 200) {
          // print(response.body);
          var data = jsonDecode(response.body)['data'];
          var items = List<RestaurantModel>.from(
              data.map((x) => RestaurantModel.fromJson(x)));
          return items;
        } else {
          throw Exception('Failed to load food from API.');
        }
      }
     catch (e) {
  throw Exception('Failed to load food from API: $e');
  }


  }


  loadProductsFromrestaurant() async {
    products = await getRestaurant();
    return products;
  }

  void addSearchToList(String searchName) {
    searchName = searchName.toLowerCase();

    searchList.value = productList.where((search) {
      var searchTitle = search.title?.toLowerCase();

      return searchTitle!.contains(searchName) ;
    }).toList();

    update();
  }

  void clearSearch() {
    searchController.clear();
    addSearchToList("");
  }

  void addToFavorites(int productId)async{
      var existingIndex =
      favoritesList.indexWhere((element) => element.id == productId);

      if (existingIndex >= 0) {
      favoritesList.removeAt(existingIndex);
      await stoarge.remove("isFavouritesList");
    } else {
      favoritesList
          .add(productList.firstWhere((element) => element.id == productId));


  }}

  bool isFav(int ProductId){
    return favoritesList.any((element) =>  element.id==ProductId);
  }

  void getCategories()async{
    var categoryName=await CategoryServices.getCategory();
    try{
      isCategoryLoading(true);
      if(categoryName.isNotEmpty){
        categoryNameList.addAll(categoryName);
      }}
    finally{
      isCategoryLoading(false);

    }
  }
   getAllCategories(String categorytitle)async{
    isAllCategory(true);
    CategoryList.value =
    await AllCategoriesServices.getAllCategories(categorytitle);

    isAllCategory(false);
  }
  getCategoryIndex(int index) async {
    var categoryAllName = await getAllCategories(categoryNameList[index]);

    if (categoryAllName != null) {
      CategoryList.value = categoryAllName;
    }
  }


}
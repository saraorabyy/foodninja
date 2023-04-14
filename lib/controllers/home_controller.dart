import 'package:finalnenja/services/service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../services/category_services.dart';
import '../test/product_model/model.dart';


class HomeController extends GetxController{
  var productList=<ProductModel>[].obs;
  var favoritesList=<ProductModel>[].obs;
  var stoarge = GetStorage();
  var isLoading=true.obs;
  var searchList=<ProductModel>[].obs;
  TextEditingController searchController=TextEditingController();
  var categoryNameList=<String>[].obs;
  var isCategoryLoading=false.obs;
  var CategoryList=<ProductModel>[].obs;
  var isAllCategory = false.obs;


  @override
  void onInit() {
    super.onInit();
    getProducts();
    getCategories();
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
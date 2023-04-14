import 'package:finalnenja/test/product_model/model.dart';
import 'package:get/get.dart';


class CartController extends GetxController{

  var productsMap={}.obs;



  void addProductToCart(ProductModel prouctModel)async{
    if (productsMap.containsKey(prouctModel)){
      productsMap[prouctModel]+=1;
    }
    else{
      productsMap[prouctModel]=1;

    }
  }

  void removeProductFromCart(ProductModel prouctModel){
    if (productsMap.containsKey(prouctModel) && productsMap[prouctModel]==1){
      productsMap.removeWhere((key, value) => key==prouctModel);
    }
    else{
      productsMap[prouctModel]-=1;

    }
  }

  void removeOneProduct(ProductModel prouctModel){
    productsMap.removeWhere((key, value) => key==prouctModel);
  }

 void clearAllProducts(){
  productsMap.clear();
 }

 get SubTotal=>productsMap.entries.map((e) => e.key.price*e.value).toList();

 get total=>productsMap.entries.map((e) => e.key.price*e.value).toList()
     .reduce((value, element) => value+element).toStringAsFixed(2);

}
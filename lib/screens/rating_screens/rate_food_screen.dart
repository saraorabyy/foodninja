import 'package:finalnenja/screens/rating_screens/rate_restaurant_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/order_column.dart';


class RateFoodScreen extends StatelessWidget {
  RateFoodScreen({Key? key}) : super(key: key);
  TextEditingController rateController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: OrderColumn(rateController: rateController, image: 'assets/images/rate_food.png', onpress: () { Get.to(()=>RateRestaurantScreen()); },));
  }
}
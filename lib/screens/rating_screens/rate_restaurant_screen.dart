import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/order_column.dart';
import '../main_screen.dart';


class RateRestaurantScreen extends StatelessWidget {
  RateRestaurantScreen({Key? key}) : super(key: key);
  TextEditingController rateController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:OrderColumn(rateController: rateController, image: 'assets/images/vegaan.png', onpress: () { Get.to(()=>MainScreen()); },),

    );
  }
}
import 'package:finalnenja/screens/rating_screens/rate_food_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/order_column.dart';

class FinishOrderScreen extends StatelessWidget {

  FinishOrderScreen({Key? key}) : super(key: key);
  TextEditingController rateController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: OrderColumn(rateController: rateController, image: 'assets/images/call.png', onpress: () { Get.to(()=>RateFoodScreen()); },)),
    );
  }
}
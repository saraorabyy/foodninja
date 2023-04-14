import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import '../../utils/theme.dart';
import '../../widgets/big_text.dart';
import '../../widgets/card_items.dart';
import '../../widgets/search_text_form.dart';
import '../cart_screen.dart';

class PopularMenuScreen extends StatelessWidget {
   PopularMenuScreen({Key? key}) : super(key: key);
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:mainColor,
        centerTitle: true,
        title:     BigText(text: 'Popular Menu'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },),
      actions: [
      IconButton(
      icon: const Icon(Icons.shopping_cart_rounded),
      onPressed: () {
        Get.to(()=>CartScreen());
      },
    )
        ],
      ),
        body:SingleChildScrollView(
          child:  Column(
            children: [
              SearchFormText(),


             SizedBox(height: 10.h),


              CardItems(height: 500.h, count: controller.productList.length),
            ],
          ),
        )



        ) ;
  }
}

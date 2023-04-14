import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../controllers/home_controller.dart';
import '../../utils/theme.dart';
import '../../widgets/big_text.dart';
import '../../widgets/category_items.dart';

class FilterScreen extends StatelessWidget {
   FilterScreen({Key? key}) : super(key: key);
   final controller=Get.put(HomeController());


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:mainColor,
          centerTitle: true,
          title:     BigText(text: 'Filter'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Get.back();
            },
          ),


        ),
        body: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height/25),
            BigText(text: 'Type'),
            SizedBox(height: MediaQuery.of(context).size.height/30),
           Obx((){
             return SizedBox( height: 200.h,
    child: GridView.builder(
    itemCount: controller.categoryNameList.length,
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
    childAspectRatio: 0.8,
    mainAxisSpacing: 9.0,
    crossAxisSpacing: 7.0,
    maxCrossAxisExtent: 200,
    mainAxisExtent: 70),
    itemBuilder:(context,index) {
    return GestureDetector(
      onTap: () {
        controller.getCategoryIndex(index);
        Get.to(() => CategoryItems(
          categoryTitle: controller.categoryNameList[index],
        ));
      },
      child: Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w),

      decoration: BoxDecoration(
      color: Colors.orangeAccent.shade100,
      borderRadius: BorderRadius.circular(15.r),
      ),
      child: Center(child: BigText(text:controller.categoryNameList[index],)),
      ),
    );
    } ),
    );
    }),


          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../utils/theme.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';

class NearstRestaurantScreen extends StatelessWidget {
  const NearstRestaurantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor:mainColor,
          centerTitle: true,
        title:     BigText(text: 'Nearest Restaurant'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),


      ),
      body:
        Column(children: [
    SizedBox(
    height: 598.h,
    child:
    GridView.builder(
    itemCount:10,
    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
    childAspectRatio: 0.8,
    mainAxisSpacing: 9.0,
    crossAxisSpacing: 6.0,
    maxCrossAxisExtent: 200,
    ),
    itemBuilder: (context, index) {
    return Container(
    margin: EdgeInsets.only(right: 10.w, left: 35.w),
    width: 200.w,
    height: 200.h,
    decoration: BoxDecoration(
    color: Colors.white60,
    borderRadius: BorderRadius.circular(15.r)
    ),

    child: Column(mainAxisAlignment: MainAxisAlignment.start,
    children: [
     SizedBox(height: 15.h),
    Container(
    height: 80.h,
    width: 80.w,
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage(
    'assets/images/food2.png'),
    fit: BoxFit.fill,
    ),
    ),
    ),
    SizedBox(height: 15.h),
    BigText(text:'Good food'),

    SizedBox(height: 10.h),
    Row(
    children: const [
    SmallText(text: '15 min',),

    ],
    ),
    ],
    ),
    );
    })
    )
    ])
    );
  }
}

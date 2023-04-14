import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/cart_controller.dart';
import '../utils/theme.dart';
import 'big_text.dart';

class CartTotal extends StatelessWidget {

  final void Function() onpress;

  CartTotal({Key? key, required this.onpress}) : super(key: key);

  final controller = Get.find<CartController>();


  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Container(
        padding:   EdgeInsets.all(18.h),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(
                  fontSize: 16.sp,
                  text: "Total",

                ),
                Text(
                  "\$${controller.total}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    height: 1.5.h,
                  ),
                ),
              ],
            ),
             SizedBox(
              width: 20.w,
            ),
            Expanded(
              child: SizedBox(
                height: 50.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ), backgroundColor: mainColor,
                    elevation: 0,
                  ),
                  onPressed: onpress,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Text(
                        "Place My Order",
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const Icon(Icons.shopping_cart),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
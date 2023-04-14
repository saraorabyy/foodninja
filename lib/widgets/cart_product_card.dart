import 'package:finalnenja/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import '../controllers/cart_controller.dart';
import '../test/product_model/model.dart';

class CartProductCard extends StatelessWidget {
  final ProductModel productModel;
  final int index;
  final int quantity;
  CartProductCard({
    required this.productModel,
    required this.index,
    required this.quantity,
    Key? key,
  }) : super(key: key);

  final controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane:  ActionPane(

        motion: const ScrollMotion(),
        children: [
          SlidableAction(onPressed: ((context){
            controller.removeOneProduct(productModel);

          }),
          icon: Icons.delete,
            backgroundColor: Colors.orangeAccent,
          )
        ],

      ),
      child: Container(
        margin:  EdgeInsets.only(left: 20.w, right: 20.w, top: 5.h),
        height: 120.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color:  Colors.white60,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100.h,
              width: 80.w,
              margin:  EdgeInsets.only(left: 15.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                image: DecorationImage(
                  image: NetworkImage('${productModel.image}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
             SizedBox(
              width: 20.w,
            ),
            Expanded(
              flex: 15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${productModel.title}',
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "\$${controller.SubTotal[index].toStringAsFixed(2)}",
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.removeProductFromCart(productModel);
                      },
                      icon: const Icon(
                        Icons.remove_circle_outline,
                        color:mainColor,
                      ),
                    ),
                    Text(
                      "$quantity",
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        controller.addProductToCart(productModel);
                      },
                      icon: const Icon(
                        Icons.add_circle,
                        color:mainColor,
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/cart_controller.dart';
import '../utils/theme.dart';
import '../widgets/cart_product_card.dart';
import '../widgets/cart_total.dart';
import '../widgets/empty_cart.dart';
import 'confirm_order_screen.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);

final controller=Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Cart Items"),
          elevation: 0,
          backgroundColor:mainColor,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                controller.clearAllProducts();
              },
              icon: const Icon(Icons.backspace),
            ),
          ],
        ),
        body: Obx(
              () {
            if (controller.productsMap.isEmpty) {
              return  const EmptyCart();
            } else {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 530,
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return CartProductCard(
                            index: index,
                            productModel:
                            controller.productsMap.keys.toList()[index],
                            quantity:
                            controller.productsMap.values.toList()[index],
                          );
                        },
                        separatorBuilder: (context, index) =>  SizedBox(
                          height: 20.h,
                        ),
                        itemCount: controller.productsMap.length,
                      ),
                    ),




                    Padding(
                      padding:  EdgeInsets.only(bottom: 30.h),
                      child: CartTotal(onpress: () {Get.to(()=>const ConfirmOrderScreen());  },),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
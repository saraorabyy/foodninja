import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/cart_controller.dart';
import '../screens/product_details_screen.dart';
import '../controllers/home_controller.dart';
import '../test/product_model/model.dart';
import '../utils/theme.dart';

class CardItems extends StatelessWidget {

  final double height;
  final dynamic count;
  CardItems({Key? key, required this.height, required this.count}) : super(key: key);

  final controller = Get.put(HomeController());
  final cartController=Get.put(CartController());





  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.value) {
        return const Center(
          child: CircularProgressIndicator(
            color: mainColor,
          ),
        );
      } else {
        return SizedBox(
          height: height,
          child:
              ListView.builder(
            itemCount:
                count,
                shrinkWrap: true,
            itemBuilder: (context, index) {

                return buildCardItems(
                    image: '${controller.productList[index].image}',
                    price: controller.productList[index].price,
                    productId: controller.productList[index].id,
                    productModels: controller.productList[index],
                    title: '${controller.productList[index].title}',
                    onTap: () {
                      Get.to(() => ProductDetailsScreen(
                        productModel: controller.productList[index],
                      ));
                    }
                    );

            },
          ),
        );
      }
    });
  }

  Widget buildCardItems({
    required String image,
    required dynamic price,
    required dynamic productId,
    required String title,
    required ProductModel productModels,
    required Function() onTap,

  }) {
    return InkWell( onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 20.w,right: 20.w,top: 10.h),
        padding:EdgeInsets.only(top: 5.h,bottom: 5.h) ,
        decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 110.h,
              width: 90.w,
              margin: EdgeInsets.only(left: 15.w),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                  image: DecorationImage(
                      image: NetworkImage(image),
                      fit: BoxFit.cover
                  )
              ),
            ),
            SizedBox(width:5.w),
            Expanded(
              flex: 15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),),
                  SizedBox(height:10.h),
                  Text('$price',),

                ],
              ),
            ),
            Column( mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                                  onPressed: () {
                                    cartController.addProductToCart(productModels);
                                  },
                                  icon: const Icon(
                                    Icons.shopping_cart,
                                    color: Colors.black,
                                  ),
                                ),
              Obx(()=>  IconButton(
                onPressed: () {
                  controller.addToFavorites(productId);
                },
                icon: controller.isFav(productId)
                    ? const Icon(
                  Icons.favorite,
                  color: Colors.red,
                )
                    : const Icon(
                  Icons.favorite_outline,
                  color: Colors.black,
                ),
              ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
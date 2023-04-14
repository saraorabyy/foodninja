import 'package:finalnenja/screens/rating_screens/edit_location_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'Home_screens/home2.dart';
import '../utils/theme.dart';
import '../widgets/big_text.dart';
import '../widgets/cart_total.dart';
import '../widgets/order_stack.dart';
import '../widgets/small_text.dart';
import 'edit_payments_screen.dart';

class ConfirmOrderScreen extends StatelessWidget {
  const ConfirmOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           OrderStack(bigtext: 'Confirm Order', onpress: () {Get.back();  },),
          SizedBox(height:MediaQuery.of(context).size.height/40),
          Container( height: 110.h,
            margin: EdgeInsets.only(right: 35.w,left: 35.w,bottom: 25.h),
            padding: EdgeInsets.only(right: 25.w,left: 25.w,top:15.h ),
            decoration: BoxDecoration(
              color:Colors.white60,
              borderRadius: BorderRadius.circular(15.r)),
            child: Column(
              children: [
                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const SmallText(text:'Deliver To'),
                    TextButton( onPressed: () {Get.to(()=> const EditLocationScreen());}, child: const Text('Edit',style: TextStyle(color: mainColor),),)
                  ],
                ),
                SizedBox(height:MediaQuery.of(context).size.height/45),
                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding:  EdgeInsets.all(2.w)
                        ,decoration: const BoxDecoration(
                        color: Colors.orangeAccent,
                        shape: BoxShape.circle
                    )
                        ,child: const Icon(Icons.location_on_outlined)),
                    BigText(text: '4517 Washington Ave. '),
                  ])])),
          Container( height: 110.h,
            margin: EdgeInsets.only(right: 35.w,left: 35.w,bottom: 25.h),
            padding: EdgeInsets.only(right: 25.w,left: 25.w,top:15.h ),
            decoration: BoxDecoration(
              color:Colors.white60,
              borderRadius: BorderRadius.circular(15.r)),
            child: Column(
              children: [
                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const SmallText(text:'Payment Method'),
                    TextButton( onPressed: () {Get.to(()=>const EditPaymentsScreen());  }, child: const Text('Edit',style: TextStyle(color: mainColor),),)
                  ]),
                SizedBox(height:MediaQuery.of(context).size.height/25),
                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/paypal.png'),
                    const Text('2121 6352 8465 ****'),
                  ])],
            )),
          SizedBox(height: MediaQuery.of(context).size.height/6),
          CartTotal(onpress: () { Get.to(()=>Home2()); },)

        ],
      ),
    );
  }
}

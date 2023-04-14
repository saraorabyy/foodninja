import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../widgets/order_stack.dart';
import 'confirm_order_screen.dart';

class EditPaymentsScreen extends StatelessWidget {
  const EditPaymentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            OrderStack(bigtext: 'Payment', onpress: () { Get.to(()=>const ConfirmOrderScreen()); },),
            SizedBox(height:MediaQuery.of(context).size.height/40),
            Container(height:110.h,
                width:double.infinity,
                decoration: BoxDecoration(color: Colors.white60,
                    borderRadius: BorderRadius.circular(15.r)),
                margin: EdgeInsets.symmetric(vertical: 15.h,horizontal: 35.w),
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/paypal.png'),
                    const Text('2121 6352 8465 ****')
                  ],

                )),
            Container(height:110.h,
        width:double.infinity,
        decoration: BoxDecoration(color: Colors.grey,
            borderRadius: BorderRadius.circular(15.r)),
        margin: EdgeInsets.symmetric(vertical: 15.h,horizontal: 35.w),
        padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/visa .png'),
                    const Text('2121 6352 8465 ****')
                  ],

                )),
            Container(height:110.h,
                width:double.infinity,
                decoration: BoxDecoration(color: Colors.grey,
                    borderRadius: BorderRadius.circular(15.r)),
                margin: EdgeInsets.symmetric(vertical: 15.h,horizontal: 35.w),
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/Payoneer.png'),
                    const Text('2121 6352 8465 ****')
                  ],

                )),

          ],
        )
    );
  }
}

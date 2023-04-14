import 'package:finalnenja/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/big_text.dart';
import '../../widgets/order_stack.dart';
import '../../widgets/small_text.dart';
import '../confirm_order_screen.dart';
import '../set_location_screen.dart';


class EditLocationScreen extends StatelessWidget {
  const EditLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          OrderStack(bigtext: 'Shipping', onpress: () {Get.to(()=>const ConfirmOrderScreen());  },),
          SizedBox(height: MediaQuery.of(context).size.height/30),
          Container( height: 110.h,
            margin: EdgeInsets.only(right: 35.w,left: 35.w,bottom: 25.h),
            padding: EdgeInsets.only(right: 20.w,left: 20.w,top:20.h ),
            decoration: BoxDecoration(
              color:Colors.white60,
              borderRadius: BorderRadius.circular(15.r),

            ),
            child: Column(
                children: [
                  const SmallText(text:'Order Location'),

                  SizedBox(height: MediaQuery.of(context).size.height/35),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Container(
                            padding:  EdgeInsets.all(2.w)
                            ,decoration: const BoxDecoration(
                            color: Colors.orangeAccent,
                            shape: BoxShape.circle
                        )
                            ,child: const Icon(Icons.location_on_outlined)),

                        BigText(text: '4517 Washington Ave. '),

                      ]

                  ),
                ]
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/45),
          Container( height: 110.h,
            margin: EdgeInsets.only(right: 35.w,left: 35.w,bottom: 25.h),
            padding: EdgeInsets.only(right: 20.w,left: 20.w,top:20.h ),
            decoration: BoxDecoration(
              color:Colors.white60,
              borderRadius: BorderRadius.circular(15.r),

            ),
            child: Column(
                children: [
                  const SmallText(text:'Deliver to'),

                  SizedBox(height: MediaQuery.of(context).size.height/70),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Container(
                            padding:  EdgeInsets.all(2.w)
                            ,decoration: const BoxDecoration(
                            color: Colors.orangeAccent,
                            shape: BoxShape.circle
                        )
                            ,child: const Icon(Icons.location_on_outlined)),

                        BigText(text: '4517 Washington Ave. '),

                      ]

                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/70),

                  InkWell(
                      onTap: (){Get.to(()=>const SetLocationScreen());},
                      child: const Text( 'Set Location',style: TextStyle(color: mainColor),)),
                ]
            ),
          ),


        ],
      ),
    );
  }
}

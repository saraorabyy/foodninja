import 'package:finalnenja/screens/auth_screens/register_process_screens/signup_success_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/process_stack.dart';


class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            const ProceessStack(bigtext: 'Set Your Location ', smalltext: 'This data will be displayed in your account profile for security'),
            SizedBox(height:MediaQuery.of(context).size.height/20),
            Container(
              width: 300.w,
              height: 150.h,
              padding:  EdgeInsets.only(top: 25.h),
              decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(15.r)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width/20),

                      Container( padding:  EdgeInsets.all(2.w),
                          decoration: const BoxDecoration(
                              color: Colors.orangeAccent,
                              shape: BoxShape.circle
                          )
                          ,child: const Icon(Icons.location_on_outlined)),
                      SizedBox(width: MediaQuery.of(context).size.width/30,),
                      const Text('Your Location')
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/22),
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 45.h,
                        width: 240.w,
                        padding:  EdgeInsets.only(left: 45.w, right: 30.w, top: 15.h),
                        decoration: BoxDecoration(
                            color: Colors.grey, borderRadius: BorderRadius.circular(15.r)),
                        child: Container( margin:  EdgeInsets.only(right: 30.w,left: 35.w),
                          child:  Text(
                            'Set Location',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'BentonSans Bold'),
                          ),
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/4.5),
            CustomButton(text: 'Next', OnPressed: () { Get.to(const SuccessNotificationScreen()); })
          ]),
    );
  }
}
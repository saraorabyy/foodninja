import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../screens/notification_screen.dart';
import '../utils/theme.dart';
import 'big_text.dart';

class MainStack extends StatelessWidget {
  const MainStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
          height: 130.h,
          child: Stack(children: [
            Positioned(

              right: 0.0,
              child: Image.asset('assets/images/background2.png'),
            ),
            Positioned(
              top: 80,
              child: Row(
                children: [
                   SizedBox(width: 35.w),
                  BigText(text: 'Find Your Favorite Food'),
                   SizedBox(width: 35.w),
                  InkWell( onTap: (){
                    Get.to(()=> const NotificationScreen());
                  },
                    child: Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(15.r)),
                      child: const Icon(
                        Icons.notifications_none,
                        color: mainColor,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]));
  }
}

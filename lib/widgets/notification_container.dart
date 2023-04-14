import 'package:finalnenja/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'big_text.dart';

class NotificationContainer extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  const NotificationContainer({
    Key? key, required this.image, required this.text1, required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      margin: EdgeInsets.only(right: 20.w,left: 20.w,bottom: 20.h),
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
          children: [
            Container(
                height: 160.h,
                width: 50.w,
                margin: EdgeInsets.only(left: 35.w,right: 35.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),

                    image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.contain
                    )
                )
            ),
            Container( margin: const EdgeInsets.only(right: 0),
              height: 60.h,
              width: 200.w,

              child:
              Column(
                children: [

                  BigText(text: text1,fontSize: 12.sp),

                  SmallText(text:text2,textAlign: TextAlign.left,)
                ],),)


          ]
      ),


    );
  }
}

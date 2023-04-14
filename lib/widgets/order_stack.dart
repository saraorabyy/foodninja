import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'big_text.dart';

class OrderStack extends StatelessWidget {
  final String bigtext;
  final void Function() onpress;

  const OrderStack({
    Key? key, required this.bigtext, required this.onpress
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox( height: 180.h,
        width: double.infinity,
        child:
        Stack(
          children: [Positioned(top: 0.0,
              right:0.0,
              child: Image.asset('assets/images/background2.png')),

            Positioned(top: 60.h,
                left: 25.w,
                child: InkWell(
                  onTap: onpress,
                  child: Container(height: 40.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent[100],
                          borderRadius: BorderRadius.circular(15.r)
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 15.w),
                           const Icon(Icons.arrow_back_ios),
                        ],
                      )
                  ),
                )),
            Positioned(top: 130.h,
              left: 25.w,
              child: Container(margin: EdgeInsets.only(right: 20.w),
                  child: BigText(
                      text: bigtext,
                      fontSize: 27.sp)),

            ) ],
        ));
  }
}
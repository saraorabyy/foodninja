import 'package:finalnenja/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'big_text.dart';

class ProceessStack extends StatelessWidget {
  final String bigtext;
  final String smalltext;
  const ProceessStack({
    Key? key, required this.bigtext, required this.smalltext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox( height: MediaQuery.of(context).size.height/2.7,
        width: double.infinity,
        child:
        Stack(
          children: [Positioned(top: 0.0,
              right:0.0,
              child: Image.asset('assets/images/background2.png')),

            Positioned(top: 55.h,
                left: 25.w,
                child: InkWell(
                  onTap: (){Get.back();},
                  child: Container(height: 45.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent[100],
                          borderRadius: BorderRadius.circular(15.r)
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.height/45,),
                          const Icon(Icons.arrow_back_ios),
                        ],
                      )
                  ),
                )),
            Positioned(top: 130.h,
              left: 30.w,
              right: 20.w,
              child: Container(margin: EdgeInsets.only(right: 20.w),
                  child: BigText(
                      text: bigtext,textAlign: TextAlign.left,
                      fontSize: 27.sp)),

            ),
            Positioned(
                top: 210.h,
                left: 30.w,
                right: 20.w,
                child: Container(margin: EdgeInsets.only(right: 20.w),
                    child: SmallText(
                        text: smalltext,textAlign: TextAlign.left))),


          ],
        ));
  }
}

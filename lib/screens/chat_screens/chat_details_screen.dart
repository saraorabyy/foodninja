import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../utils/theme.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';
import '../call_screens/call_ringing_screen.dart';


class ChatDetailsScreen extends StatelessWidget {
  const ChatDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox( height: 600.h,
            child: Stack(
              children: [
                Positioned(child: Image.asset('assets/images/Background.png'),
                ), Positioned(top: 55.h,
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
                          text: 'Chat',textAlign: TextAlign.left,
                          fontSize: 27.sp)),

                ),
                Positioned(
                    top: 210.h,
                    left: 30.w,
                    right: 20.w,
                    child: Container(margin: EdgeInsets.only(right: 20.w),
                        child: const SmallText(
                            text:''))),
                Positioned(
                    top: 200.h,
                    child: Container( margin: EdgeInsets.only(right: 35.w,left: 35.w,bottom: 20.h),
                        padding: EdgeInsets.only(left: 15.w,top: 10.h),

                        height: 90.h,
                        width: 270.w,
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Row(
                            children: [
                              Image.asset('assets/images/chat.png'),
                              SizedBox(width:20.w),
                              Center(
                                child: Column(
                                  children: [
                                    SizedBox(height: 15.w),
                                    BigText(text:'Anamwp'),
                                    SizedBox(height: 15.h),
                                    const SmallText(text:'online')
                                  ],
                                ),
                              ),
                              SizedBox(width: 40.w),
                              IconButton(onPressed: (){Get.to(()=>CallRingingScreen());}, icon:const Icon(Icons.call,color: mainColor,))
                            ]
                        )
                    )),

                Positioned( top: 330.h,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Container( margin: EdgeInsets.only(left: 30.w),
                              width: 100.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: const Center(child: Text('Just to order')),
                            )
                          ],
                        )
                      ],
                    )),
                Positioned( top: 400.h,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Container( margin: EdgeInsets.only(left: 120.w),
                              width: 220.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: const Center(child: Text('Okay, for what level of spiciness?')),
                            )
                          ],
                        )
                      ],
                    )),

              ],
            ),
          )
        ],
      ),
    );
  }
}

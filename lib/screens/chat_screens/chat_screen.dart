import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../widgets/big_text.dart';
import '../../widgets/process_stack.dart';
import '../../widgets/small_text.dart';
import 'chat_details_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            const ProceessStack(bigtext: 'Chat', smalltext:''),
            ListView.builder(itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context,index){
                  return InkWell(
                    onTap:(){
                      Get.to(()=>const ChatDetailsScreen());
                    },
                    child: Container( margin: EdgeInsets.only(right: 35.w,left: 35.w,bottom: 20.h),
                      padding: EdgeInsets.only(left: 15.w,top: 10.h),

                      height: 80.h,
                      width: 75.w,
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
                                const SmallText(text:'Your Order Just Arrived!')
                              ],
                            ),
                          )
                        ]
                      )
                    )
                  );
                })
          ],
        )
    );
  }
}
import 'package:finalnenja/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controllers/auth_controller/auth_controller.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/process_stack.dart';
import '../../../widgets/small_text.dart';
import 'otp_screen.dart';


class ForgetPasswordScreen extends StatelessWidget {
   ForgetPasswordScreen({Key? key}) : super(key: key);
   AuthController controller=AuthController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ProceessStack(bigtext: 'Forgot password?', smalltext: 'Select which contact details should we use to reset your password'),
          SizedBox(height:MediaQuery.of(context).size.height/35),
       GetBuilder<AuthController>(

         builder: (controller) { return Container( height: 120,
           padding: EdgeInsets.only(left: 30.w ),
           margin: EdgeInsets.only(right: 40.w,left: 40.w),
           decoration: BoxDecoration(
             color: Colors.white60,
             borderRadius: BorderRadius.circular(15.r),

           ),
           child: Row(
             children: [
               const Icon(Icons.sms,color:mainColor,size: 45),
               SizedBox(width:MediaQuery.of(context).size.width/10),

               Column( mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   SizedBox( height:MediaQuery.of(context).size.height/25),
                   const SmallText(text: 'via sms',),
                   SizedBox(height:MediaQuery.of(context).size.height/60),
                   const SmallText(text: '01111111114')
                 ],
               )
             ],
           ),
         );},),




          SizedBox(height: MediaQuery.of(context).size.height/15),
          Container( height: 120,
            padding: EdgeInsets.only(left: 30.w ),
            margin: EdgeInsets.only(right: 40.w,left: 40.w),
            decoration: BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.circular(15.r),

            ),
            child: Row(
              children: [
                const Icon(Icons.email_rounded,color:mainColor,size: 45),
                SizedBox(width:MediaQuery.of(context).size.width/10),

                Column( mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox( height:MediaQuery.of(context).size.height/25),
                    const SmallText(text: 'via email',),
                    SizedBox(height:MediaQuery.of(context).size.height/60),
                    const SmallText(text: 'saraorabyy@gmail.com')

                  ],
                )
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/8),
          CustomButton(text: 'Next', OnPressed: ()
          { Get.offAll(()=> OTPScreen()); },)
        ],
      ),
    );
  }
}

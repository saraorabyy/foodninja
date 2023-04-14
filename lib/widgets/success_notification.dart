
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'big_text.dart';
import 'custom_button.dart';

class SuccessNotification extends StatelessWidget {
  final String bigText;
  final String buttonText;
  VoidCallback onpressed;
   SuccessNotification({
    Key? key, required this.bigText, required this.buttonText,required this.onpressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox( height: double.infinity,
      child: Stack(
        children: [
          Positioned(

              child: Image.asset('assets/images/Background.png')),
          Positioned(
              top:135.h,
              right: 45.w,
              left: 70.w,

              child: Image.asset('assets/images/true.png')),
          Positioned( top:320.h,
            right: 45.w,
            left: 70.w,
            child: Text('Congrats!',
              textAlign: TextAlign.center,style: TextStyle(
                  fontFamily: 'viga',
                  fontWeight: FontWeight.bold,
                  fontSize: 38.sp,
                  color: Colors.green,
                  letterSpacing: 0.5.w
              ),
            ),),
          Positioned( top: 370.h,
              left: 55.w,

              child: BigText(text: bigText,)),
          Positioned(bottom: 30.h, left: 45.w ,
              child: CustomButton(text: buttonText, OnPressed:onpressed))

        ],
      ),

    );
  }
}

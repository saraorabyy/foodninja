import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/theme.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function() OnPressed ;

  const CustomButton({
    Key? key, required this.text, required this.OnPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: OnPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor:mainColor,
          minimumSize: Size(280.w,50.h),
      ),
          child: Container( margin:  EdgeInsets.only(right: 30.w,left: 35.w),
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
           
            child: Text(
              text,textAlign: TextAlign.center,
              style:  TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'BentonSans Bold'),
            ),
          ),
        );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../utils/theme.dart';

class MainText extends StatelessWidget {
  final String text;
  const MainText({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 90.w),
      child: Column(
          children:[
            Text(text,
              textAlign: TextAlign.center,style: TextStyle(
                  fontFamily: 'viga',
                  fontWeight: FontWeight.bold,
                  fontSize: 40.sp,
                  color: mainColor,
                  letterSpacing: 0.5.w
              ),
            ),
            Text('Deliever Favorite Food',
              textAlign: TextAlign.center,style: TextStyle(
                  fontFamily: 'Inter',
                  // fontWeight: FontWeight.bold,
                  fontSize: 15.sp,
                  color: Get.isDarkMode? Colors.white: Colors.black,
                  letterSpacing: 1.w
              ),
            ),
          ]
      ),

    );
  }
}

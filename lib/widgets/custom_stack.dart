import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'main_text.dart';

class CustomStack extends StatelessWidget {
  const CustomStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            child: Image.asset('assets/images/Background.png')),
        Positioned(
          top: 60.h,
          left: 85.w,
          child: Image.asset('assets/images/Logo.png'),
        ),
        Positioned(top: 180.h, left: -15.w, child: const MainText(text: 'FoodNinja',)),
      ],
    );
  }
}
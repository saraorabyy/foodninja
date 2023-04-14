import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;
  const SmallText({
    Key? key, required this.text, this.color=Colors.black54,this.textAlign=TextAlign.center
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        style: TextStyle(
          fontSize: 15.sp, fontWeight: FontWeight.w400,fontFamily: 'BentonSans Book',
          color: color,));
  }
}
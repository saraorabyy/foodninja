import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  String text;
  double fontSize;
  final TextAlign textAlign;
  BigText({
    Key? key, required this.text , this.fontSize=22,this.textAlign=TextAlign.center
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,textAlign: textAlign,style: TextStyle(
      fontSize:fontSize, fontWeight: FontWeight.bold,fontFamily: 'BentonSans Bold',
      color: Colors.black,)

    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhotoContainer extends StatelessWidget {
  final String image;
  final String text;
  const PhotoContainer({
    Key? key, required this.image, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( width: 300,
      height: 120.h,
      padding: EdgeInsets.only(top: 25.h),
      decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.circular(15.r)
      ),
      child: Column(
        children: [
          Image.asset(image),
          SizedBox(height: MediaQuery.of(context).size.height/40),
          Text(text,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.sp,
              wordSpacing: 1.w
          ),)
        ],
      ),

    );
  }
}

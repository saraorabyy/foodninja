import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentContainer extends StatelessWidget {
  final String image;
  final Color color;
  const PaymentContainer({
    Key? key, required this.image, required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( width: 300.w,
      height: 90.h,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15)
      ),
      child:
      Image.asset(image),
    );
  }
}
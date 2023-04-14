
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomTextFormField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final Color color;
  final double width;
  final bool ObsecureText;
  final Function validator;
  final Widget prefixIcon;
  final Widget suffixIcon;

  CustomTextFormField({
    Key? key,
    required this.label,
    required this.controller,
    this.color=Colors.white60,
    this.width=double.infinity,
    required this.ObsecureText,
    required this.validator,
    required this.prefixIcon,
    required this.suffixIcon, required String text,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
      margin:  EdgeInsets.only(left: 30.w,right: 30.w),
      height: 45.h,
      width: width,
      child: TextFormField(
          controller: controller,
           obscureText: ObsecureText,

          decoration: InputDecoration(
            suffixIcon:suffixIcon,
              prefixIcon:prefixIcon,
              filled: true,
              fillColor: color,


              hintStyle: const TextStyle(
                color: Colors.grey,

              ),
              labelText: label,labelStyle: TextStyle(
              fontSize: 18.sp),

    enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(
    color: Colors.white
    ),
    borderRadius: BorderRadius.circular(10)
    ),
    focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(
    color: Colors.white
    ),
    borderRadius: BorderRadius.circular(10)
    ),
    errorBorder: OutlineInputBorder(
    borderSide: const BorderSide(
    color: Colors.white
    ),
    borderRadius: BorderRadius.circular(10)
    ),
    focusedErrorBorder: const OutlineInputBorder(
    borderSide: BorderSide(
    color: Colors.white
    ),
              ),
          ),

      ),
    );
  }
}

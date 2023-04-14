import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller/auth_controller.dart';
import '../utils/theme.dart';

class CustomCheckButton extends StatelessWidget {
  final controller=Get.put(AuthController());
  final String text;
  CustomCheckButton({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

      Row(
        children: [
          InkWell( onTap: (){
            controller.CheckBox();
          },
            child: Container(
              width: MediaQuery.of(context).size.width/15,
              height: MediaQuery.of(context).size.height/30,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: controller.isChecked?
              const Icon(Icons.check,color:mainColor,size: 30,):Container(),
            ),
          ),
          SizedBox(width: 10.w),
          Text(text,style: TextStyle(
              fontSize: 12.sp,fontWeight: FontWeight.w400,fontFamily: 'BentonSans Book'
          ),)


        ],
      );
  }
}

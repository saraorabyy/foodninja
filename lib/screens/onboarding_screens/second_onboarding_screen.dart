import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../widgets/big_text.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/small_text.dart';
import '../auth_screens/login_screen.dart';

class SecondOnboardingScreen extends StatelessWidget {
  const SecondOnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Image.asset('assets/images/food2.png'),
              SizedBox(height: MediaQuery.of(context).size.height/20,),
              Container( margin: EdgeInsets.only(left: 30.w,right: 30.w),
                  child: BigText(text: 'Food Ninja is Where Your Comfort Food Lives',)),
              SizedBox(height: MediaQuery.of(context).size.height/20),
              Container(margin:EdgeInsets.only(left: 50.w,right: 50.w),
                child: const SmallText(text: 'Enjoy a fast and smooth food delivery at your doorstep',),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/10),
              CustomButton(text: 'Next', OnPressed: () {
                Get.offAll(() => LoginScreen());
                },),
            ],
          ),
        )
    );
  }
}

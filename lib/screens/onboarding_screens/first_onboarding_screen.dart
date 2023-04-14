import 'package:finalnenja/screens/onboarding_screens/second_onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../widgets/big_text.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/small_text.dart';

class FirstOnboardingScreen extends StatelessWidget {
  const FirstOnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
              children: [
                Image.asset('assets/images/food1.png'),
                SizedBox(
                  height: MediaQuery.of(context).size.height/25,
                ),
                Container(
                  width: 180.w,
                  margin:  EdgeInsets.only(left: 80.w, right: 80.h),
                  child: BigText(
                    text: 'Find your Comfort Food here',
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/20),
                Container(
                    margin:  EdgeInsets.only(left: 50.w, right: 50.w),
                    child: const SmallText(
                      text:
                      'Here You Can find a chef or dish for every taste and color. Enjoy!',
                    )),
                SizedBox(height: MediaQuery.of(context).size.height/20),
                CustomButton(text: 'Next', OnPressed: () { Get.offAll(() => const SecondOnboardingScreen()); },),
              ],
            )));
  }
}
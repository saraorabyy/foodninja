import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../controllers/splash_screen_controller.dart';
import '../../widgets/main_text.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.navigate();
    return Scaffold(
        body: GetBuilder<SplashScreenController>(
          init: SplashScreenController(),
          builder: (controller) => Stack(
            children: [
              Positioned(
                  top: 0.0,
                  right: 0.0,
                  left: 0.0,
                  child: Image.asset('assets/images/Background.png')),
              Positioned(
                top: 220.h,
                left: 100.w,
                child: Image.asset('assets/images/Logo.png'),
              ),
              Positioned(
                  top: 340.h,
                  child: const MainText(
                    text: 'FoodNinja',
                  ))
            ],
          ),
        ));
  }
}

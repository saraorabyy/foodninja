import 'package:get/get.dart';
import '../screens/onboarding_screens/first_onboarding_screen.dart';

class SplashScreenController extends GetxController{
  Future navigate () async{
    await Future.delayed(const Duration(seconds: 5));
    Get.offAll(()=> const FirstOnboardingScreen());
  }
}
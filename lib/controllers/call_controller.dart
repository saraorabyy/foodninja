import 'package:get/get.dart';

import '../screens/call_screens/call.dart';

class CallController extends GetxController{
  Future navigate () async{
    await Future.delayed(const Duration(seconds: 5));
    Get.offAll(()=>const CallScreen());
  }
}
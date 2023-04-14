import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/success_notification.dart';
import '../login_screen.dart';


class SuccessResetScreen extends StatelessWidget {
  const SuccessResetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SuccessNotification(bigText: 'Password reset succesful', buttonText: 'Back', onpressed: () { Get.offAll(()=> LoginScreen()); },),
    );
  }
}



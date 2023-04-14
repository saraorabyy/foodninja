import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/success_notification.dart';
import '../login_screen.dart';



class SuccessNotificationScreen extends StatelessWidget {
  const SuccessNotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:
        SuccessNotification(bigText: 'Your Profile Is Ready To Use', buttonText: 'Try Order', onpressed: () { Get.to(LoginScreen()); },)

    );
  }
}
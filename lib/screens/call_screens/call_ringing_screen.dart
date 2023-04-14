import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/call_controller.dart';
import '../../controllers/splash_screen_controller.dart';
import '../../widgets/call_column.dart';
import '../../widgets/call_view.dart';

class CallRingingScreen extends StatelessWidget {
   CallRingingScreen({Key? key}) : super(key: key);

  final controller=Get.put(CallController());

  @override
  Widget build(BuildContext context) {
    controller.navigate();
    return Scaffold(

      body:GetBuilder<SplashScreenController>(
        init: SplashScreenController(),
    builder: (controller) =>  Column(
        children: [
          const CallView(bigText: 'Courtney Henry', smallText: 'Ringing . . .', image: 'assets/images/call.png',),
          SizedBox(height:MediaQuery.of(context).size.height/3),
           CallColumn(icon:Icons.keyboard_voice_rounded, onpressed: () { Get.back(); },),
        ],
      )

    )
      );

  }
}
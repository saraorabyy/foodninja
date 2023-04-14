import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/call_column.dart';
import '../../widgets/call_view.dart';
import '../rating_screens/finish_order_screen.dart';


class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CallView(bigText: 'Courtney Henry', smallText: '15.23 Min', image: 'assets/images/call.png',),
          SizedBox(height:MediaQuery.of(context).size.height/3),
           CallColumn(icon:Icons.keyboard_voice_rounded, onpressed: () { Get.to(()=>FinishOrderScreen()); }),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../widgets/notification_container.dart';
import '../widgets/process_stack.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          ProceessStack(bigtext: 'Notification', smalltext: ''),
          NotificationContainer(image: 'assets/images/SuccessIcon.png', text1: 'Your order has been taken by the driver', text2: 'Recently',),
          NotificationContainer(image: 'assets/images/TopUpIcon.png', text1: 'Topup for \$100 was successful', text2: '10.00 Am',),
          NotificationContainer(image: 'assets/images/CancelIcon.png', text1: 'Your order has been canceled', text2: '22 Juny 2021',),



        ],
      ),
    );
  }
}
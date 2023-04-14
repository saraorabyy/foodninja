
import 'package:finalnenja/screens/auth_screens/register_process_screens/upload_photo_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/auth_controller/auth_controller.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/payment_container.dart';
import '../../../widgets/process_stack.dart';


class PaymentScreen extends StatelessWidget {
   PaymentScreen({Key? key}) : super(key: key);
  final AuthController controller=Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            const ProceessStack(bigtext: 'Payment Method', smalltext: 'This data will be displayed in your account profile for security'),
             SizedBox(height: MediaQuery.of(context).size.height/35),
    GetBuilder<AuthController>(
    init:AuthController(),
    builder: (controller)=> GestureDetector(
    onTap:(){
    controller.visibility();},
    child: controller.isVisibile?
            const PaymentContainer(image: 'assets/images/paypal.png', color: Colors.white60):
    const PaymentContainer(image: 'assets/images/paypal.png', color: Colors.grey))),




        SizedBox(height: MediaQuery.of(context).size.height/35),

    GetBuilder<AuthController>(
    init:AuthController(),
    builder: (controller)=> GestureDetector(
    onTap:(){
    controller.visibility();},
    child: controller.isVisibile?
    const PaymentContainer(image: 'assets/images/visa .png', color: Colors.white60):
    const PaymentContainer(image: 'assets/images/visa .png', color: Colors.grey),

    )),

    SizedBox(height: MediaQuery.of(context).size.height/35),
            GetBuilder<AuthController>(
                init:AuthController(),
                builder: (controller)=> GestureDetector(
                    onTap:(){
                      controller.visibility();},
                  child: controller.isVisibile?
                   const PaymentContainer(image: 'assets/images/Payoneer.png', color: Colors.white60):
                   const PaymentContainer(image: 'assets/images/Payoneer.png', color:Colors.grey)

                )),
             SizedBox(height: MediaQuery.of(context).size.height/15),
            CustomButton(text: 'Next', OnPressed: () { Get.to(UploadPhotoScreen()); },)
          ],

        )



    );
  }
}


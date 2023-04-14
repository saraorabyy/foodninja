import 'package:finalnenja/screens/auth_screens/forget_password_screens/success_reset_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/auth_controller/auth_controller.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_textformfield.dart';
import '../../../widgets/process_stack.dart';



class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);
  final formkey=GlobalKey<FormState>();
  TextEditingController newController=TextEditingController();
  TextEditingController confirmController=TextEditingController();
  AuthController controller=AuthController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Form( key:formkey,
          child: Column(
            children: [
              const ProceessStack(bigtext: 'Reset your password here', smalltext: 'Select which contact details should we use to reset your password'),

              SizedBox(height: MediaQuery.of(context).size.height/20),
             GetBuilder<AuthController>(
               init:AuthController(),
               builder:(controller)=>CustomTextFormField(
               controller: newController,
               label: 'New Password',
               ObsecureText:controller.isVisibile ? false : true,
               validator: (){},
               prefixIcon: const Text(''),
               suffixIcon:  IconButton(
                   onPressed: () {
                     controller.visibility();
                   },
                   icon: controller.isVisibile
                       ? const Icon(
                     Icons.visibility_off,
                     color: Colors.black,
                   )
                       : const Icon(
                     Icons.visibility,
                     color: Colors.black,
                   )),
               text: '',),
             ),
              SizedBox(height: MediaQuery.of(context).size.height/15),
              GetBuilder<AuthController>(
                init:AuthController(),
                builder:(controller)=>CustomTextFormField(
                  controller: confirmController,
                  label: 'Confirm Password',
                  ObsecureText:controller.isVisibile ? false : true,
                  validator: (){},
                  prefixIcon: const Text(''),
                  suffixIcon:  IconButton(
                      onPressed: () {
                        controller.visibility();
                      },
                      icon: controller.isVisibile
                          ? const Icon(
                        Icons.visibility_off,
                        color: Colors.black,
                      )
                          : const Icon(
                        Icons.visibility,
                        color: Colors.black,
                      )),
                  text: '',),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/4,),
              CustomButton(text: 'Next', OnPressed: () {
                if(newController.value.toString()==confirmController.value.toString()) {
                  Get.offAll(()=>const SuccessResetScreen());
                }


              })

            ],
          ),
        ),
      ),
    );
  }
}

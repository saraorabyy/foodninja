import 'package:finalnenja/controllers/auth_controller/auth_controller.dart';
import 'package:finalnenja/screens/auth_screens/register_process_screens/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_textformfield.dart';
import '../../../widgets/process_stack.dart';


class SignUpProcessScreen extends StatelessWidget {
  SignUpProcessScreen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController numController = TextEditingController();
  AuthController controller=AuthController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Form( key:formKey,
          child: Column(
            children: [
              const ProceessStack(bigtext: 'Fill in your bio to get started', smalltext: 'This data will be displayed in your account profile for security'),

              SizedBox(height: MediaQuery.of(context).size.height/35),
              CustomTextFormField(
                label: 'Name',
                controller: nameController,
                ObsecureText: false,
                validator:(value){
                  if(value==null || value.isEmpty) {
                    return 'PLease Enter Your Name';
                  }
              }, prefixIcon: const Text(''),  suffixIcon: const Text(''), text: '',),
              SizedBox(height: MediaQuery.of(context).size.height/30),
              CustomTextFormField(
                label: 'Mobile Number',
                controller: numController, ObsecureText: false, validator:(value) {
                if(value.toString().length<11){
                  return 'Number should equal to 11 characters';
                }else{
                  return null;
                }
              }, prefixIcon: const Text(''), suffixIcon:const Text(''), text: '' ,

              ),
              SizedBox(height: MediaQuery.of(context).size.height/3.2),
              CustomButton(text: 'Next', OnPressed: () {
                var formdata=formKey.currentState!;
                if (formdata.validate()) {
                  nameController.text.trim();
                      numController.text.trim();
                  // print('valid');
                  Get.to(()=>PaymentScreen());
                }
                else{
                  // print("not valid");
                }
              })
            ]
          ),
        ),
      ),
    );
  }
}

import 'package:finalnenja/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../controllers/auth_controller/auth_controller.dart';
import '../../utils/my_string.dart';
import '../../widgets/big_text.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_check_button.dart';
import '../../widgets/custom_stack.dart';
import '../../widgets/custom_textformfield.dart';
import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final AuthController controller=Get.put(AuthController());
  TextEditingController userController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(

            child: Column(
              children: [
                const CustomStack(),
                SizedBox(
                    height: MediaQuery.of(context).size.height/120),
                BigText(text: 'Sign Up For Free'),
                SizedBox(height:  MediaQuery.of(context).size.height/35),
                Form(
                    key: formKey,
                    child:Column( children:[

                CustomTextFormField(

                  label: 'Username',
                  controller: userController, ObsecureText: false,
                  validator: (value) {
                    if(value.toString().length<=2 || !RegExp(validationName).hasMatch(value)){
                      return'Enter valid name';
                    }
                    else{
                      return null;
                    }
                  },
                  prefixIcon: Icon(Icons.person,color: mainColor,size: 30.sp,),
                  suffixIcon: const Text(''), text: '',

                ),
                SizedBox(height: MediaQuery.of(context).size.height/37),
                CustomTextFormField(
                  label: 'E-mail',
                  controller: emailController,
                  ObsecureText: false,
                  validator: (value) {
                    if(!RegExp(validationEmail).hasMatch(value)){
                      return 'Invalid email';
                    }
                    {
                      return null;
                    }
                  },
                  prefixIcon: Icon(Icons.email,color: mainColor,size: 30.sp),
                  suffixIcon: const Text(''), text: '',

                ),
                SizedBox(height: MediaQuery.of(context).size.height/37),
                      GetBuilder<AuthController>(
                        init:AuthController(),
                        builder: (controller)=>
                            CustomTextFormField(
                                controller: passwordController,
                                ObsecureText: false,
                                // controller.isVisibile? false:true,
                                validator: (value) {
                                  if(value.toString().length<6){
                                    return 'Password should be longer or equal to 6 characters';
                                  }else{
                                    return null;
                                  }
                                },
                                prefixIcon:
                                  Icon(Icons.lock,color: mainColor,size: 30.sp),

                                suffixIcon: IconButton(onPressed: (){
                                  controller.visibility();
                                },icon: controller.isVisibile?
                                const Icon(Icons.visibility_off,color: Colors.black,):
                                const Icon(Icons.visibility,color: Colors.black,)
                                ), label: 'Password', text: '',
                                ),)
                ])
    ),



                SizedBox(
                    height:  MediaQuery.of(context).size.height/35
                ),
            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width/10),
                GetBuilder<AuthController>(
                  init:AuthController(),
                  builder:(controller)=>  CustomCheckButton(text: 'Keep Me Signed In')),
              ],
            ),

                SizedBox(
                    height:  MediaQuery.of(context).size.height/20
                ),
                // CustomCheckButton(text: 'Email Me About Special Pricing'),
                CustomButton(text: 'Create Account', OnPressed: () {
                  var formdata=formKey.currentState!;
                  if (formdata.validate()) {
                    controller.signup(emailController.text.trim(),
                        passwordController.text.trim(),userController.text.trim());
                    // print('valid');


                  }

                  // else{
                  //   print("not valid");
                  // }
                },
                ),
                SizedBox(height: MediaQuery.of(context).size.height/30),
                InkWell(
                  child: Text(
                    'Already have an account?',
                    style: TextStyle(
                        color: mainColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'BentonSans Medium'),
                  ),
                  onTap: (){
                    Get.to(LoginScreen());
                  },
                )
              ],
            )),

    );
  }
}

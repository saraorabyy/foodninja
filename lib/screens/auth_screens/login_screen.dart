import 'package:finalnenja/screens/auth_screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../controllers/auth_controller/auth_controller.dart';
import '../../utils/my_string.dart';
import '../../utils/theme.dart';
import '../../widgets/big_text.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_stack.dart';
import '../../widgets/custom_textformfield.dart';
import 'forget_password_screens/forget_password_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final AuthController controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            const CustomStack(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 200,
            ),
            BigText(text: 'Login To Your Account'),
            SizedBox(height: MediaQuery.of(context).size.height / 30),
            CustomTextFormField(
              label: 'E-mail',
              controller: emailController,
              ObsecureText: false,
              validator: (value) {
                if (!RegExp(validationEmail).hasMatch(value)) {
                  return 'Invalid email';
                }
                {
                  return null;
                }
              },
              prefixIcon: const Text(''),
              suffixIcon: const Text(''),
              text: '',
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 40),
            GetBuilder<AuthController>(
                init: AuthController(),
                builder: (controller) => CustomTextFormField(
                    label: 'Password',
                    controller: passwordController,
                    ObsecureText: controller.isVisibile ? false : true,
                    validator: (value) {
                      if (value.toString().length < 6) {
                        return 'Password should be longer or equal to 6 characters';
                      } else {
                        return null;
                      }
                    },
                    prefixIcon: const Text(''),
                    suffixIcon: IconButton(
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
                    text: '')),
            SizedBox(height: MediaQuery.of(context).size.height / 40),
            BigText(text: 'or continue with', fontSize: 16.sp),
            SizedBox(height: MediaQuery.of(context).size.height / 35),
            Container(
              margin: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Image.asset(
                      'assets/images/FacebookButton.png',
                    ),
                    onTap: () {
                       controller.signInWithFacebook();
                    },
                  ),
                  GestureDetector(
                    child: Image.asset(
                      'assets/images/GoogleButton.png',
                    ),
                    onTap: () {
                      controller.SignInWithGoogle();
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 33,
            ),
            InkWell(
              onTap: (){
                  Get.to(ForgetPasswordScreen());
              },
              child: Text(
                'Forget Your Password?',
                style: TextStyle(
                    color: mainColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'BentonSans Medium'),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 35),
            CustomButton(
                text: 'Login',
                OnPressed: () {
                  var formdata = formKey.currentState!;
                  if (formdata.validate()) {
                    controller.login(emailController.text.trim(),
                        passwordController.text.trim());
                    // print('valid');
                  }
                  // else {
                  //   print("not valid");
                  // }
                }),
            SizedBox(height: MediaQuery.of(context).size.height / 50),
            InkWell(
              child: Text(
                'Don`t have an account?',
                style: TextStyle(
                    color: mainColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'BentonSans Medium'),
              ),
              onTap: () {
                Get.offAll(() => SignUpScreen());
              },
            )
          ],
        ),
      ),
    ));
  }
}

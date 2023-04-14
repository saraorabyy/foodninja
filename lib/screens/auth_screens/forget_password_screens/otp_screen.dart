import 'package:finalnenja/screens/auth_screens/forget_password_screens/reset_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/process_stack.dart';


class OTPScreen extends StatelessWidget {
  OTPScreen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold( body: SingleChildScrollView(
      child: Column(
        children: [
          const ProceessStack(bigtext: 'Enter 4-digit Verification code', smalltext: 'Code send to +6282045**** . This code will expired in 01:30'),
          SizedBox(height: MediaQuery.of(context).size.height/15),
          Form( key: formKey,
            child: Container(
              margin: EdgeInsets.only(right: 30.w,left: 30.w),
              height: 90,
              decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(15.r)
              ),
              child: TextFormField(
                style: Theme.of(context).textTheme.headline6,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [LengthLimitingTextInputFormatter(4)],
                 validator: (value) {
            if (value.toString().length < 4) {
            return 'Code should be equal to 4 characters';
            }else {
                    return null;
                  }
                },
              ),

            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/3),
          CustomButton(text: 'Next', OnPressed: () {var formdata=formKey.currentState!;
    if (formdata.validate()) {
     Get.offAll(()=>(ResetPasswordScreen())); }},)
        ],
      ),
    )



    );
  }
}

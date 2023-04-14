import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controllers/register_process_controller/upload_photo_controller.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/process_stack.dart';
import 'location_screen.dart';

class UploadPreviewScreen extends StatelessWidget {
  UploadPreviewScreen({Key? key}) : super(key: key);
  final controller=Get.put(UploadPhotoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            const ProceessStack(bigtext: 'Upload Your Photo Profile', smalltext: 'This data will be displayed in your account profile for security'),
            SizedBox(height: MediaQuery.of(context).size.height/30),
            Container( width: 250.w,
              height: 200.h,
              padding: EdgeInsets.only(top: 20.h),
              decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(15.r)
              ),
              child:
              // Image.asset('assets/images/profilephoto.png'),
              Image.file( controller.imageFile,fit: BoxFit.cover, ),
            ),


            SizedBox(height: 100.h),
            CustomButton(text: 'Next', OnPressed: () { Get.to(const LocationScreen()); },)
          ],
        )
    );
  }
}

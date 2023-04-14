import 'package:finalnenja/screens/auth_screens/register_process_screens/upload_preview_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/register_process_controller/upload_photo_controller.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/photo_container.dart';
import '../../../widgets/process_stack.dart';




class UploadPhotoScreen extends StatelessWidget {
  UploadPhotoScreen({Key? key}) : super(key: key);
  final UploadPhotoController controller=Get.put(UploadPhotoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          children: [
            const ProceessStack(bigtext: 'Upload Your Photo Profile', smalltext: 'This data will be displayed in your account profile for security'),
            SizedBox(height: MediaQuery.of(context).size.height/20),
            InkWell(child: const PhotoContainer(image: 'assets/images/Gallery.png', text: 'From Gallery',)
                ,onTap:(){
                  controller.pickImageFromGallery();
                }
            ),
            SizedBox(height: MediaQuery.of(context).size.height/35),
            InkWell(child: const PhotoContainer(image: 'assets/images/camera.png', text: 'Take Photo',),
                onTap:(){
                  controller.pickImageCamera();
                }
            ),
            SizedBox(height: MediaQuery.of(context).size.height/20),
            CustomButton(text: 'Next', OnPressed: () {
              controller.UploadImage();
              Get.to(UploadPreviewScreen());
              },)


          ],

        )
    );
  }
}

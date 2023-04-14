import 'dart:io';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';



class UploadPhotoController extends GetxController{
  late File  imageFile;
  String FileName=DateTime.now().microsecondsSinceEpoch.toString();
  final picker=ImagePicker();
  String imageUrl='';


  Future pickImageFromGallery()async{
    var image= await picker.pickImage(source: ImageSource.gallery);
    imageFile=File(image!.path);
  }
  Future pickImageCamera()async{
    var image= await picker.pickImage(source: ImageSource.camera);
    imageFile=File(image!.path);
  }
  Future UploadImage() async{
    if(imageFile==null) return;

    Reference referenceRoot=FirebaseStorage.instance.ref();
    Reference referenceDirImage=referenceRoot.child('images');
    Reference referenceImageToUpload=referenceDirImage.child(FileName);

      await referenceImageToUpload.putFile(File(imageFile.path));
      imageUrl=await referenceImageToUpload.getDownloadURL();



  }

}

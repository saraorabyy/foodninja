import 'dart:convert';
import 'package:finalnenja/services/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import '../../models/facebook_model.dart';
import '../../screens/auth_screens/register_process_screens/sign_up_process.dart';
import '../../screens/main_screen.dart';
import '../../shared_preference/shared_preference.dart';
import 'package:get_storage/get_storage.dart';
import '../../utils/my_string.dart';
import '../../utils/theme.dart';



class AuthController extends GetxController {

  bool isChecked = false;
  bool isVisibile = false;
  AuthServices services = AuthServices();
  FaceBookModel? faceBookModel;
  var displayUserName = ''.obs;
  var displayUserPhoto = ''.obs;
  var displayUserEmail = ''.obs;
  var isSignedIn = false;
  final GetStorage authBox = GetStorage();


  void visibility() {
    isVisibile = !isVisibile;
    update();
  }

  void CheckBox() {
    isChecked = !isChecked;
    update();
  }

  Future signup(
      dynamic email, String? password, String? name, dynamic mobile) async {
    // try {
    //   final response = await http.post(
    //       Uri.parse(
    //           'http://178.128.138.57/api/auth/register/user?name=$name&email=$email&password=$password&mobile=01149262599')
    //   );
    //   // print(response.statusCode);
    //   if (response.statusCode == 200) {
    //     var data = jsonDecode(response.body.toString());
    //     print(data['token']);
    //     await CacheHelper.saveDataToSharedPrefrence('token', data['token'])
    //         .then((value) => Get.offAll(() => SignUpProcessScreen()));
    //
    //     print('Created Account successfully');
    //   }
    //   else {
    //     print('Failed');
    //     Get.back();
    //   }
    // }

    /***"email": "eve.holt@reqres.in"***/
    /*** "password": ""pistol""***/
    try {
      final response = await http.post(
          // Uri.parse('https://reqres.in/api/register')
          Uri.parse('$BaseUrl/auth/login')


      , //string is not asubtype of URI
          body: {
            'email': email,
            'password': password,
            'name' : name,
            'mobile': mobile
          }
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        // print(data['token']);
        await CacheHelper.saveDataToSharedPrefrence('token', data['token']).then((value) => Get.offAll(SignUpProcessScreen()));

        // print('Created Account successfully');
      }
      else {
        // print('Failed');
        Get.back();
      }
    }
    catch (e) {
      // print(e.toString());
    }
  }

  /*****Amite api*****/

  // Future login( String email,String? password)async {
  //   try {
  //     final response = await http.post(
  //         Uri.parse('http://178.128.138.57/api/auth/login?password=$password&email=$email')
  //         ,
  //
  //
  //       //string is not asubtype of URI
  //         // body: {
  //         //   'email': email,
  //         //   'password': password,
  //         // }
  //     );
  //     print(response.statusCode);
  //
  //     if (response.statusCode == 200) {
  //       var data = jsonDecode(response.body.toString());
  //       print(data['token']);
  //       await CacheHelper.saveDataToSharedPrefrence('token', data['token']).then((value) => Get.offAll(() => MainScreen()));
  //       print('Login successfully');
  //       // isSignedIn = true;
  //       // authBox.write("auth", isSignedIn);
  //       // Get.offAll(() => MainScreen()
  //
  //       }
  //     else {
  //       print('Failed');
  //       Get.back();
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //   }}

  Future login(String? email, String? password) async {


    /***"email": "eve.holt@reqres.in"***/
    /*** "password": "cityslicka"***/

    try {
      final response = await http.post(
          // Uri.parse('https://reqres.in/api/login'),
          Uri.parse('$BaseUrl/auth/login'),
              // string is not asubtype of URI
          body: {
            'email': email,
            'password': password,
          }
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        // print(data['token']);
        await CacheHelper.saveDataToSharedPrefrence('token', data['token']);
        isSignedIn = true;
        authBox.write('auth', isSignedIn);
        Get.offAll(MainScreen());
        print('Login successfully');
      }
      else {
        Get.back();
      }
    } catch (e) {
      // print(e.toString());
    }
  }


  Future SignInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await services.googleSignIn
          .signIn();
      displayUserName.value = googleUser!.displayName!;
      displayUserPhoto.value = googleUser.photoUrl!;
      displayUserEmail.value = googleUser.email;

      GoogleSignInAuthentication googleSignInAuthentication =
      await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken,
      );

      await services.auth.signInWithCredential(credential);

      isSignedIn = true;
      authBox.write("auth", isSignedIn);


      Get.offAll(() => MainScreen());
    } catch (error) {
      Get.snackbar(
        'Error!',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: mainColor,
        colorText: Colors.white,
      );
    }
  }


  void signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();


    if (loginResult.status == LoginStatus.success) {
      final data = await FacebookAuth.instance.getUserData();
      faceBookModel = FaceBookModel.fromJson(data);

      isSignedIn = true;
      authBox.write("auth", isSignedIn);

      Get.offAll(() => MainScreen());
    }
  }
}
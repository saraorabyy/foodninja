import 'package:finalnenja/screens/main_screen.dart';
import 'package:finalnenja/screens/onboarding_screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

Future<void> main()  async{

   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context,child) {

          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home:GetStorage().read<bool>('auth') == true?MainScreen(): SplashScreen(),
          );}
    );
  }
}

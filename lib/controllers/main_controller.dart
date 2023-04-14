import 'package:get/get.dart';
import '../screens/cart_screen.dart';
import '../screens/chat_screens/chat_screen.dart';
import '../screens/profile_screens/profile_screen.dart';
import '../screens/Home_screens/home2.dart';

class MainController extends GetxController{

  RxInt currentIndex=0.obs;
  final tabs=[
    // HomeScreen(),
    Home2(),
    ProfileScreen(),
    CartScreen(),
    const ChatScreen(),

  ].obs;


}
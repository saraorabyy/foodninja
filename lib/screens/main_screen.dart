import 'package:finalnenja/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/theme.dart';

class MainScreen extends StatelessWidget {
   MainScreen({Key? key}) : super(key: key);
   final controller=MainController();

  @override
  Widget build(BuildContext context) {
    return Obx(() =>  Scaffold(
      backgroundColor: context.theme.backgroundColor,

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:Get.isDarkMode? Colors.black: Colors.white,
        currentIndex: controller.currentIndex.value,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.home,
                color: mainColor,),
              icon:Icon(Icons.home,
                color: Colors.grey) ,
              label: ''
          ),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.person,
                color: mainColor,),
              icon:Icon(Icons.person,
                color: Colors.grey) ,
              label: ''
          ),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.shopping_cart,
                color: mainColor,),
              icon:Icon(
                   Icons.shopping_cart,
                color: Colors.grey) ,
              label: ''
          ),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.chat,
                color: mainColor,),
              icon:Icon(Icons.chat,
                color: Colors.grey) ,
              label: ''
          ),
        ],
        onTap: (index){
          controller.currentIndex.value=index;
        },
      ),
      body: IndexedStack(
        index: controller.currentIndex.value,
        children: controller.tabs.value,
      ),
    ));
  }
}

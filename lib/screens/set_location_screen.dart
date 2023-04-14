import 'package:finalnenja/screens/rating_screens/edit_location_screen.dart';
import 'package:finalnenja/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../widgets/big_text.dart';
import '../widgets/small_text.dart';

class SetLocationScreen extends StatelessWidget {
  const SetLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/Maps.png',fit: BoxFit.contain,),
          Positioned(
            bottom: 20.h,

            child:      Container( height: 170.h,
            margin: EdgeInsets.only(left: 15.w,bottom: 25.h),
            padding: EdgeInsets.only(right: 20.w,left: 20.w,top:20.h ),
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(15.r),

            ),
            child: Column(
                children: [
                  const SmallText(text:'Deliver to'),

                  SizedBox(height: MediaQuery.of(context).size.height/70),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Container(
                            padding:  EdgeInsets.all(2.w)
                            ,decoration: const BoxDecoration(
                            color: Colors.orangeAccent,
                            shape: BoxShape.circle
                        )
                            ,child: const Icon(Icons.location_on_outlined)),

                        BigText(text: '4517 Washington Ave. '),

                      ]

                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/30),

                  CustomButton(text: 'Set Location', OnPressed: (){Get.to(()=>const EditLocationScreen());})
                ]
            ),
          ),
          )
        ],
      ),
    );
  }
}

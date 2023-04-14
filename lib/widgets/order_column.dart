import 'package:finalnenja/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'call_view.dart';

class OrderColumn extends StatelessWidget {
  final String image;
  final void Function() onpress;
   const OrderColumn({
    Key? key,
    required this.rateController, required this.image, required this.onpress,
  }) : super(key: key);

  final TextEditingController rateController;


  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          CallView(bigText: "Thank You!"
              "Enjoy Your Meal", smallText: 'Please rate your Restaurant', image: image),
          SizedBox(height: MediaQuery.of(context).size.height/20),

          RatingBar.builder(
            initialRating:3,
            minRating: 1,
            direction: Axis.horizontal,
            itemCount: 5,
            itemPadding: EdgeInsets.all(6.w),
            itemBuilder: (context,_)=>const Icon(Icons.star,color: Colors.orange,),
            onRatingUpdate:(rating){}),


          SizedBox(height:  MediaQuery.of(context).size.height/10),
           Container( margin: EdgeInsets.only(right: 35.w,left: 35.w),
            child: TextField(
              controller: rateController,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.mode_edit_sharp, color: mainColor,size: 30,),


                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r)
                  ),
                  labelText: 'leave feedback',labelStyle: TextStyle(
                  fontSize: 18.sp)
              ),

            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/20),
          Row(
            children: [
              TextButton(
                  onPressed:onpress,
                  child: Container(
                    height: 50.h,
                    width: 150.w,
                    margin: EdgeInsets.only(left: 35.w, right: 10.w),
                    padding: EdgeInsets.only(top: 15.h,left: 25.w),
                    decoration: BoxDecoration(
                        color:mainColor, borderRadius: BorderRadius.circular(15)),
                    child: Container(
                      margin: EdgeInsets.only(right: 30.w,left: 25.w),
                      child: Text(
                        'Sumbit',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'BentonSans Bold'))))),

              TextButton(
                  onPressed: onpress,
                  child: Container(
                    height: 50.h,
                    width: 120.w,
                    padding: EdgeInsets.only(top: 15.h),
                    decoration: BoxDecoration(
                        color: Colors.white60, borderRadius: BorderRadius.circular(15.r)),
                    child: Container( margin: EdgeInsets.only(left: 45.w),
                      child: Text(
                        'Skip',
                        style: TextStyle(
                            color:mainColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'BentonSans Bold'),
                      )
                    )
                  ))])]);
  }
}

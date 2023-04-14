import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallColumn extends StatelessWidget {
  final IconData icon;
  final VoidCallback onpressed;
  const CallColumn({
    Key? key, required this.icon,required this.onpressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Row(

        children: [
          Container( margin: EdgeInsets.only(left: 80.w),
            height: 60.h,
            width: 60.w,
            decoration: const BoxDecoration(
                color: Colors.greenAccent,
                shape: BoxShape.circle
            ),
            child: Icon(icon,color: Colors.green,size: 35),


          ),
          Container( margin: EdgeInsets.only(left: 90.w),
            height: 60.h,
            width: 60.w,
            decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle
            ),
            child:IconButton(onPressed: onpressed, icon: const Icon(Icons.clear,color: Colors.white,size: 35))



          )


        ],
      );
  }
}

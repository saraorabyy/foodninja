import 'package:finalnenja/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class EmptyCart extends StatelessWidget {
  const EmptyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [

          SizedBox(height:MediaQuery.of(context).size.height/3.5),

          const Icon(
            Icons.shopping_cart,
            size: 150,
            color: Colors.black,
          ),
          SizedBox(height:MediaQuery.of(context).size.height/30),
          Text('Your Cart is Empty',
              style: TextStyle(
                color: mainColor,
                fontSize: 35.sp,
                fontWeight: FontWeight.bold
              )),
            SizedBox(height:MediaQuery.of(context).size.height/45),
          Text('Add items to get started',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
              )),






        ],
      ),

    );
  }
}

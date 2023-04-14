import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/process_stack.dart';

class VoucherPromoScreen extends StatelessWidget {
  const VoucherPromoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          children: [
            const ProceessStack(bigtext: 'Voucher Promo', smalltext: ''),
            Container( height: 130.h,
              width: 400.w,
              margin: EdgeInsets.only(left: 35.w,right: 35.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),

              ),
              child:Image.asset('assets/images/Voucher1.png') ,

            ),
            SizedBox(height: MediaQuery.of(context).size.height/10),
            Container( height: 130.h,
              width: 400.w,
              margin: EdgeInsets.only(left: 35.w,right: 35.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),

              ),
              child:Image.asset('assets/images/Voucher2.png') ,
            ),

          ],
        )
    );
  }
}

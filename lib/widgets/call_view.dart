import 'package:finalnenja/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'big_text.dart';

class CallView extends StatelessWidget {
  final String bigText;
  final String smallText;
  final String image;

  const CallView({
    Key? key, required this.bigText, required this.smallText, required this.image
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Positioned(
                child: Image.asset('assets/images/Background.png') ),
            Positioned(
              bottom: 0,
              right: 95.w,
              child: ClipOval(
                child: Image.asset(image
                  ,fit: BoxFit.cover,
                ),
              ),)
          ],

        ),

        SizedBox(height: 40.h),
        BigText(text: bigText),
        SizedBox(height: 20.h),
        SmallText(text: smallText),
      ],
    );
  }
}

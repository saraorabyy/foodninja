import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/theme.dart';

class profileinfo extends StatelessWidget {
  profileinfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // leading:
            // IconButton(
            //     icon: Icon(Icons.logout),
            //     onPressed: () async{await authcontroller.logout();
            //     await authcontroller.signoutwithgoogle();
            //     await authcontroller.signoutwithfacebbok();}
            // ),
            floating: true,
            expandedHeight: MediaQuery.of(context).size.height /5,
            flexibleSpace: const FlexibleSpaceBar(
            ),
          ),
          SliverToBoxAdapter(
            child:Container(
                height: 600.h,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 20.0.h, horizontal: 15.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orangeAccent,
                        ),
                        child: const Center(
                          child: Text(
                            'Member Gold',
                            style: TextStyle(color: Colors.deepOrange),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Text(
                            'Anam Wusono',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.sp),
                          ),
                          SizedBox(
                            width: 110.w,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.edit),
                            color: mainColor,
                          )
                        ],
                      ),
                      const Text(
                        'anamwp66@gmail.com',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 90.h,
                            width: 330.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey,
                            ),
                            child: Padding(
                              padding:
                              EdgeInsets.symmetric(horizontal: 10.w),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/Voucher Icon.png',
                                          width: 40.w,
                                          height: 90.h,
                                        ),
                                        SizedBox(
                                          width: 200.w,
                                          child: Center(
                                            child: Text(
                                              'You Have 3 Voucher',
                                              style: TextStyle(
                                                  fontWeight:
                                                  FontWeight.bold,
                                                  color: Colors.black,
                                                  fontSize: 15.sp),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Favorites',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.sp),
                      ),


                    ],
                  ),
                )),

          ),

        ],
      ),
    );
  }
}
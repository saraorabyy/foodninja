import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/theme.dart';

class RestaurantScreen extends StatelessWidget {

  const RestaurantScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: CustomScrollView(slivers: [
              SliverAppBar(
                floating: true,
                expandedHeight: MediaQuery.of(context).size.height / 3,
                flexibleSpace: const FlexibleSpaceBar(
                  background: Positioned.fill(
                      child: Image(
                        image: AssetImage('assets/images/PhotoRestaurant.png'),
                        fit: BoxFit.fill,
                      )),
                ),
              ),
              SliverToBoxAdapter(
                  child: Container(
                      height: 600.h,
                      color: Colors.white,
                      child: Padding(
                          padding:
                          EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 15.w),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          height: 30.h,
                                          width: 100.w,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: mainColor,
                                          ),
                                          child: const Center(
                                              child: Text(
                                                'Popular',
                                                style: TextStyle(color: Colors.white),
                                              )))
                                    ]),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  'Wijie Bar and Resto',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 25.sp),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on,
                                      color: mainColor,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    const Text(
                                      '19 Km',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    const Icon(
                                      Icons.star_half_outlined,
                                      color: mainColor,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    const Text('4.8 rating'),

                                    SizedBox(
                                      width: 10.w,
                                    ),

                                  ],
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                SizedBox(
                                  width: 300.w,
                                  child: Text(
                                    'Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .',
                                    maxLines: 6,
                                    style: TextStyle(fontSize: 20.sp),
                                  ),
                                ),
                                ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: 2,
                                    itemBuilder: (BuildContext context, index) {
                                      return Container(
                                        transform: Matrix4.translationValues(
                                            0.0, -50.0, 0.0),
                                        child: Stack(
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                    height: 90.h,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(30),
                                                      color: Colors.white,
                                                    ),
                                                    child: Row(children: [
                                                      Image.asset(
                                                          'assets/images/PhotoProfile.png',
                                                          width: 80.w,
                                                          height: 150.h,
                                                          fit: BoxFit.fill),
                                                      SizedBox(
                                                        width: 10.w,
                                                      ),
                                                      Column(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Row(
                                                              children: [
                                                                const Text(
                                                                  'Anamwp',
                                                                  style: TextStyle(
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                    color:
                                                                    Colors.black,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 10.w,
                                                                ),
                                                                const Icon(
                                                                  Icons.star,
                                                                  color: mainColor,
                                                                ),
                                                                SizedBox(
                                                                  width: 2.w,
                                                                ),
                                                                const Text('5'),
                                                                SizedBox(
                                                                  width: 10.w,
                                                                ),
                                                                const Text(
                                                                  '12 April 2021',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .grey),
                                                                )
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            const SizedBox(
                                                              width: 200,
                                                              child: Text(
                                                                'This Is great, So delicious! You Must Here, With Your family . . ',
                                                                style: TextStyle(
                                                                  fontWeight:
                                                                  FontWeight.bold,
                                                                  color: Colors.grey,
                                                                ),
                                                                maxLines: 2,
                                                              ),
                                                            )
                                                          ])
                                                    ])),
                                                SizedBox(height: 10.h),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    })

                              ])))),

            ])));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../controllers/home_controller.dart';
import '../../controllers/register_process_controller/upload_photo_controller.dart';
import '../../utils/theme.dart';
import '../voucher_promo_screen.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({Key? key}) : super(key: key);
   HomeController controller=Get.put(HomeController());
   // ProfileController Pcontroller=Get.put(ProfileController());
   final imagecontroller=Get.put(UploadPhotoController());


   @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: true,
                expandedHeight: MediaQuery
                    .of(context)
                    .size
                    .height / 3,
                flexibleSpace: const FlexibleSpaceBar(
                  background: Positioned.fill(
                      child: Image(
                        image: AssetImage('assets/images/PhotoProfile.png'),
                        fit: BoxFit.fill
                      )
                  ),
                ),
              ),
              SliverToBoxAdapter(
                  child:
                  Container(
                      height: 700.h,
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
                                      style: TextStyle(color: Colors
                                          .deepOrange),
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

                                              InkWell( onTap: (){
                                                Get.to(()=>const VoucherPromoScreen());
                                              },
                                                child: Container(
                                                        width: 400.w,
                                                        height: 80.h,
                                                          decoration: BoxDecoration(
                                                            color: Colors.white60,
                                                            borderRadius: BorderRadius.circular(15.r)
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(width: 30.w),
                                                              Image.asset('assets/images/Voucher Icon.png'),
                                                              SizedBox(width: 20.w),
                                                              Text(
                                                                'You Have 3 Voucher',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                    FontWeight.bold,
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize: 15.sp),
                                                              ),
                                                            ],
                                                          ),

                                                      ),
                                              ),

                                          SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  Text(
                                                    'Favorites',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold, fontSize: 20.sp),
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),


                                                  Obx(() {
                                                    if (controller.favoritesList.isEmpty) {
    return Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
    SizedBox(
    height: 100,
    width: 100,
    child: Icon(Icons.favorite,
    size: 100,),
    ),
    SizedBox(
    height: 20,
    ),
    Text('Please, Add your favorites products.',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: 18,
    )),
    ],
    ),

    );
    }
    else {
    return ListView.builder(
    itemCount: controller.favoritesList.length,
    shrinkWrap: true,
    itemBuilder: (context, index) {
    return


    Container(
    margin: EdgeInsets.only(
    left: 20.w, right: 20.w, top: 10.h),
    padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
    decoration: BoxDecoration(
    color: Colors.white60,
    borderRadius: BorderRadius.circular(20.r),
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Container(
    height: 110.h,
    width: 90.w,
    margin: EdgeInsets.only(left: 15.w),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20.r),
    image: DecorationImage(
    image: NetworkImage(
    '${controller.favoritesList[index]
        .image}'),
    fit: BoxFit.cover
    )
    ),
    ),
    SizedBox(width: 5.w),
    Expanded(
    flex: 15,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    '${controller.favoritesList[index].title}',
    style: const TextStyle(
    overflow: TextOverflow.ellipsis,
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.bold,
    ),),
    SizedBox(height: 10.h),
    Text('\$ ${controller.favoritesList[index]
        .price}'),
    ],
    ),
    ),
    Column(mainAxisAlignment: MainAxisAlignment.end,
    children: [
    IconButton(
    onPressed: () {
    // controller.addToFavorites(productId)
    },
    icon: const Icon(
    Icons.favorite,
    color: Colors.red,

    )
    )

    ],
    ),
    ],
    ),
    );
    }

    );
    }
                                                  }
                                                  )
                              ],
                                          ),
                                        ),
                                      )
              )
            ]

        )
                      );


    //       SizedBox(
    //         height: 10.h,
    //       ),
    //       Text(
    //         'Favorites',
    //         style: TextStyle(
    //             fontWeight: FontWeight.bold, fontSize: 20.sp),
    //       ),
    //       SizedBox(
    //         height: 10.h,
    //       ),
    //
    //
    //       Obx(() {
    //         if (controller.favoritesList.isEmpty) {
    //           return Center(
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 SizedBox(
    //                   height: 100,
    //                   width: 100,
    //                   child: Icon(Icons.favorite,
    //                     size: 100,),
    //                 ),
    //                 const SizedBox(
    //                   height: 20,
    //                 ),
    //                 Text('Please, Add your favorites products.',
    //                     style: TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                       color: Colors.black,
    //                       fontSize: 18,
    //                     )),
    //               ],
    //             ),
    //           );
    //         }
    //
    //
    //         else {
    //           return ListView.builder(
    //               itemCount: controller.favoritesList.length,
    //               shrinkWrap: true,
    //               itemBuilder: (context, index) {
    //                 return
    //
    //
    //                   Container(
    //                     margin: EdgeInsets.only(
    //                         left: 20.w, right: 20.w, top: 10.h),
    //                     padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
    //                     decoration: BoxDecoration(
    //                       color: Colors.white60,
    //                       borderRadius: BorderRadius.circular(20.r),
    //                     ),
    //                     child: Row(
    //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                       children: [
    //                         Container(
    //                           height: 110.h,
    //                           width: 90.w,
    //                           margin: EdgeInsets.only(left: 15.w),
    //                           decoration: BoxDecoration(
    //                               color: Colors.white,
    //                               borderRadius: BorderRadius.circular(20.r),
    //                               image: DecorationImage(
    //                                   image: NetworkImage(
    //                                       '${controller.favoritesList[index]
    //                                           .image}'),
    //                                   fit: BoxFit.cover
    //                               )
    //                           ),
    //                         ),
    //                         SizedBox(width: 5.w),
    //                         Expanded(
    //                           flex: 15,
    //                           child: Column(
    //                             mainAxisAlignment: MainAxisAlignment.center,
    //                             crossAxisAlignment: CrossAxisAlignment.start,
    //                             children: [
    //                               Text(
    //                                 '${controller.favoritesList[index].title}',
    //                                 style: TextStyle(
    //                                   overflow: TextOverflow.ellipsis,
    //                                   color: Colors.black,
    //                                   fontSize: 14,
    //                                   fontWeight: FontWeight.bold,
    //                                 ),),
    //                               SizedBox(height: 10.h),
    //                               Text('\$ ${controller.favoritesList[index]
    //                                   .price}'),
    //
    //                             ],
    //                           ),
    //                         ),
    //                         Column(mainAxisAlignment: MainAxisAlignment.end,
    //                           children: [
    //                             IconButton(
    //                                 onPressed: () {
    //                                   // controller.addToFavorites(productId)
    //                                 },
    //                                 icon: Icon(
    //                                   Icons.favorite,
    //                                   color: Colors.red,
    //
    //                                 )
    //                             )
    //
    //                           ],
    //                         ),
    //                       ],
    //                     ),
    //                   );
    //               }
    //           );
    //         }
    //       })
    //
    //
    //     ],
    //     ),
    //   );
    // })


//               SliverToBoxAdapter(
//                   child:FutureBuilder(
//                       future: Pcontroller.getUserData(),
//                       builder:(BuildContext context, AsyncSnapshot<dynamic> snapshot){
//                         if(snapshot.hasData){return Container(
//                             height: 600.h,
//                             color: Colors.white,
//                             child: Padding(
//                               padding: EdgeInsets.symmetric(
//                                   vertical: 20.0.h, horizontal: 15.w),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Container(
//                                     height: 30.h,
//                                     width: 100.w,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(10),
//                                       color: Colors.orangeAccent,
//                                     ),
//                                     child: Center(
//                                       child: Text(
//                                         'Member Gold',
//                                         style: TextStyle(color: Colors.deepOrange),
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 5.h,
//                                   ),
//                                   Row(
//                                     children: [
//                                       Text(
//                                         'Anam Wusono',
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 25.sp),
//                                       ),
//                                       SizedBox(
//                                         width: 110.w,
//                                       ),
//                                       IconButton(
//                                         onPressed: () {},
//                                         icon: Icon(Icons.edit),
//                                         color: mainColor,
//                                       )
//                                     ],
//                                   ),
//                                   Text(
//                                     '${Pcontroller.userModel.}',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.grey),
//                                   ),
//                                   SizedBox(
//                                     height: 10.h,
//                                   ),
//                                   Stack(
//                                     children: [
//                                       Container(
//                                         height: 90.h,
//                                         width: 330.w,
//                                         decoration: BoxDecoration(
//                                           borderRadius: BorderRadius.circular(20),
//                                           color: Colors.grey,
//                                         ),
//                                         child: Padding(
//                                           padding:
//                                           EdgeInsets.symmetric(horizontal: 10.w),
//                                           child: Column(
//                                             crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                             children: [
//                                               MaterialButton(
//                                                 onPressed: () {},
//                                                 child: Row(
//                                                   children: [
//                                                     Container(
//                                                         child: Image.asset(
//                                                           'assets/images/Voucher Icon.png',
//                                                           width: 40.w,
//                                                           height: 90.h,
//                                                         )),
//                                                     Container(
//                                                       width: 200.w,
//                                                       child: Center(
//                                                         child: Text(
//                                                           'You Have 3 Voucher',
//                                                           style: TextStyle(
//                                                               fontWeight:
//                                                               FontWeight.bold,
//                                                               color: Colors.black,
//                                                               fontSize: 15.sp),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   SizedBox(
//                                     height: 10.h,
//                                   ),
//                                   Text(
//                                     'Favorites',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold, fontSize: 20.sp),
//                                   ),
//
//                                   // Obx(() {
//                                   //   if( menuu.favorites.isEmpty){
//                                   //     return Padding(
//                                   //       padding: EdgeInsets.symmetric(vertical: 60.0.h),
//                                   //       child: Center(child: Column(
//                                   //         mainAxisAlignment: MainAxisAlignment.center,
//                                   //         children: [
//                                   //           SizedBox(height: 100.h,width: 100.w,child:Image.asset('assets/images/heart-removebg-preview.png'),),
//                                   //           SizedBox(height: 10.h,),
//                                   //           Text('Please add your favorite products', style: TextStyle(
//                                   //             fontWeight: FontWeight.bold,
//                                   //             fontSize: 20.sp,
//                                   //           ),)
//                                   //
//                                   //         ],
//                                   //       ),),
//                                   //     );
//                                   //   } else{
//                                   //     return Expanded(
//                                   //       child: ListView.builder(
//                                   //         shrinkWrap: true,
//                                   //         scrollDirection: Axis.vertical,
//                                   //         itemCount: menuu.favorites.length,
//                                   //         itemBuilder:(BuildContext context, index) {
//                                   //           return Column(
//                                   //             children: [
//                                   //               Container(
//                                   //                 transform: Matrix4.translationValues(0.0, -20.0, 0.0),
//                                   //                 child: Stack(
//                                   //                   children: [
//                                   //                     Container(
//                                   //                       height: 80.h,
//                                   //                       width: double.infinity,
//                                   //                       decoration: BoxDecoration(
//                                   //                           borderRadius: BorderRadius.circular(30),
//                                   //                           color: Colors.white
//                                   //                       ),
//                                   //                       child: Row(
//                                   //                         children: [
//                                   //                           Container(
//                                   //                             height: 100.h,
//                                   //                             width: 80.w,
//                                   //                             decoration: BoxDecoration(
//                                   //                               image: DecorationImage(
//                                   //                                 image: NetworkImage(
//                                   //                                     menuu.favorites[index].image.toString()),
//                                   //                                 fit: BoxFit.fill,
//                                   //                               ),
//                                   //                             ),
//                                   //                           ),
//                                   //                           SizedBox(
//                                   //                             width: 5.w,
//                                   //                           ),
//                                   //                           Padding(
//                                   //                             padding:
//                                   //                             EdgeInsets.only(top: 15, right: 25, left: 10),
//                                   //                             child: Column(
//                                   //                               children: [
//                                   //                                 Container(
//                                   //                                   width:200.w,
//                                   //                                   child: Text(
//                                   //                                     menuu.favorites[index].title.toString(),
//                                   //                                     style: TextStyle(
//                                   //                                       fontWeight: FontWeight.bold,
//                                   //                                     ),
//                                   //                                     maxLines: 1,
//                                   //                                     overflow: TextOverflow.ellipsis,
//                                   //                                   ),
//                                   //                                 ),
//                                   //                                 SizedBox(
//                                   //                                   height: 10.h,
//                                   //                                 ),
//                                   //                                 Text(
//                                   //                                   '\$ ${menuu.favorites[index].price.toString()}',
//                                   //                                   style: TextStyle(
//                                   //                                     fontWeight: FontWeight.bold,
//                                   //                                     color: greencolor,
//                                   //                                   ),
//                                   //                                 ),
//                                   //                               ],
//                                   //                             ),
//                                   //                           ),
//                                   //                         ],
//                                   //                       ),
//                                   //                     ),
//                                   //                   ],
//                                   //                 ),
//                                   //               ),
//                                   //               SizedBox(height: 20.h,),
//                                   //             ],
//                                   //           );},
//                                   //       ),
//                                   //     );
//                                   //   }
//                                   // },
//
//                           ],
//                               ),
//                             )
//                             );
//                             }
//                         else{return Center(child: CircularProgressIndicator(color: mainColor,));
//                         }}
//
//                   )
//
//               ),
//            ])
//     );
//   }
// }


// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             leading:
//             IconButton(
//                 icon: Icon(Icons.logout),
//                 onPressed: () async{
//                 //   await authcontroller.logout();
//                 // await authcontroller.signoutwithgoogle();
//                 // await authcontroller.signoutwithfacebbok();
//                 }
//             ),
//             floating: true,
//             expandedHeight: MediaQuery.of(context).size.height /5,
//             flexibleSpace: FlexibleSpaceBar(
//               background:Positioned.fill(
//                       child: Image(
//                         image:AssetImage('assets/images/PhotoProfile.png') ,
//                         fit: BoxFit.fill,
//                       )),
//               // imagecontroller.imgPath != null?Image.file(File(imagecontroller.imgPath!), fit: BoxFit.cover,):Image.asset('assets/images/profilerectangle-removebg-preview.png'),
//             ),
//           ),
//           SliverToBoxAdapter(
//             child:Container(
//                 height: 600.h,
//                 color: Colors.white,
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(
//                       vertical: 20.0.h, horizontal: 15.w),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         height: 30.h,
//                         width: 100.w,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Colors.orangeAccent,
//                         ),
//                         child: Center(
//                           child: Text(
//                             'Member Gold',
//                             style: TextStyle(color: Colors.deepOrange),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 5.h,
//                       ),
//                       Row(
//                         children: [
//                           Text(
//                             'Anam Wusono',
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 25.sp),
//                           ),
//                           SizedBox(
//                             width: 110.w,
//                           ),
//                           IconButton(
//                             onPressed: () {},
//                             icon: Icon(Icons.edit),
//                             color: mainColor,
//                           )
//                         ],
//                       ),
//                       Text(
//                         'anamwp66@gmail.com',
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.grey),
//                       ),
//                       SizedBox(
//                         height: 10.h,
//                       ),
//                       Stack(
//                         children: [
//                           Container(
//                             height: 90.h,
//                             width: 330.w,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               color: Colors.grey,
//                             ),
//                             child: Padding(
//                               padding:
//                               EdgeInsets.symmetric(horizontal: 10.w),
//                               child: Column(
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                                 children: [
//                                   MaterialButton(
//                                     onPressed: () {},
//                                     child: Row(
//                                       children: [
//                                         Container(
//                                             child: Image.asset(
//                                               'assets/images/Voucher Icon.png',
//                                               width: 40.w,
//                                               height: 90.h,
//                                             )),
//                                         Container(
//                                           width: 200.w,
//                                           child: Center(
//                                             child: Text(
//                                               'You Have 3 Voucher',
//                                               style: TextStyle(
//                                                   fontWeight:
//                                                   FontWeight.bold,
//                                                   color: Colors.black,
//                                                   fontSize: 15.sp),
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10.h,
//                       ),
//                       Text(
//                         'Favorites',
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 20.sp),
//                       ),
//
//                       Obx(() {
//                         if( menuu.favorites.isEmpty){
//                           return Padding(
//                             padding: EdgeInsets.symmetric(vertical: 60.0.h),
//                             child: Center(child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 SizedBox(height: 100.h,width: 100.w,child:Image.asset('assets/images/heart-removebg-preview.png'),),
//                                 SizedBox(height: 10.h,),
//                                 Text('Please add your favorite products', style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 20.sp,
//                                 ),)
//
//                               ],
//                             ),),
//                           );
//                         } else{
//                           return Expanded(
//                             child: ListView.builder(
//                               shrinkWrap: true,
//                               scrollDirection: Axis.vertical,
//                               itemCount: menuu.favorites.length,
//                               itemBuilder:(BuildContext context, index) {
//                                 return Column(
//                                   children: [
//                                     Container(
//                                       transform: Matrix4.translationValues(0.0, -20.0, 0.0),
//                                       child: Stack(
//                                         children: [
//                                           Container(
//                                             height: 80.h,
//                                             width: double.infinity,
//                                             decoration: BoxDecoration(
//                                                 borderRadius: BorderRadius.circular(30),
//                                                 color: Colors.white
//                                             ),
//                                             child: Row(
//                                               children: [
//                                                 Container(
//                                                   height: 100.h,
//                                                   width: 80.w,
//                                                   decoration: BoxDecoration(
//                                                     image: DecorationImage(
//                                                       image: NetworkImage(
//                                                           menuu.favorites[index].image.toString()),
//                                                       fit: BoxFit.fill,
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 SizedBox(
//                                                   width: 5.w,
//                                                 ),
//                                                 Padding(
//                                                   padding:
//                                                   EdgeInsets.only(top: 15, right: 25, left: 10),
//                                                   child: Column(
//                                                     children: [
//                                                       Container(
//                                                         width:200.w,
//                                                         child: Text(
//                                                           menuu.favorites[index].title.toString(),
//                                                           style: TextStyle(
//                                                             fontWeight: FontWeight.bold,
//                                                           ),
//                                                           maxLines: 1,
//                                                           overflow: TextOverflow.ellipsis,
//                                                         ),
//                                                       ),
//                                                       SizedBox(
//                                                         height: 10.h,
//                                                       ),
//                                                       Text(
//                                                         '\$ ${menuu.favorites[index].price.toString()}',
//                                                         style: TextStyle(
//                                                           fontWeight: FontWeight.bold,
//                                                           color: greencolor,
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     SizedBox(height: 20.h,),
//                                   ],
//                                 );},
//                             ),
//                           );
//                         }
//                       },
//
//                       )],
//                   ),
//                 )),
//
//           ),
//
//         ],
//       ),
//     );
//   }
// }


  }}
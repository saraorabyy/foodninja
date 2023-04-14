// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import '../controllers/product_controller.dart';
// import '../models/product_model/ProductModel.dart';
// import '../widgets/big_text.dart';
// import '../widgets/custom_textformfield.dart';
// import '../widgets/main_stack.dart';
// import '../widgets/small_text.dart';
//
// class HomeScreen extends StatelessWidget {
//   HomeScreen({Key? key}) : super(key: key);
//   final _formKey = GlobalKey<FormState>();
//   TextEditingController searchController = TextEditingController();
//   PageController pageController = PageController(viewportFraction: 1);
//   final controller=Get.put(ProductController());
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child:
//
//         Column(children: [
//           MainStack(),
//           Row(
//             children: [
//               CustomTextFormField(
//                 label: 'What do you want to order?',
//                 controller: searchController,
//                 color: Colors.redAccent,
//                 width: 250, text: '', ObsecureText: false, validator: (){}, prefixIcon: Icon(Icons.search), suffixIcon: Text(''),
//               ),
//               SizedBox(width: 8),
//               Container(
//                 height: 50,
//                 width: 50,
//                 decoration: BoxDecoration(
//                     color: Colors.redAccent,
//                     borderRadius: BorderRadius.circular(15)),
//                 child: Icon(
//                   Icons.filter_alt_sharp,
//                   color: Colors.green,
//                   size: 30,
//                 ),
//               )],
//           ),
//           SizedBox(height: 10),
//           Container( margin: EdgeInsets.only(right:35 ,left: 35),
//             height: 200,
//             width:double.infinity,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15),
//             ),
//             child:Image.asset('assets/images/adv.png') ,
//           ),
//           SizedBox(height: 10),
//           Row(
//             children: [
//               SizedBox(width:35),
//               BigText(text: 'Nearest Restaurant'),
//               SizedBox(width: 50),
//               SmallText(text: 'View More', color: Colors.deepOrange),
//             ],
//           ),
//           SizedBox(height: 10),
//
//            FutureBuilder(
//     future: controller.getProduct(),
//     builder: (context,AsyncSnapshot snapshot)
//     {
//     if(snapshot.hasData){
//     ProductModel data=snapshot.data;
//     return
//
//     Container(
//     height: 500.h,
//     child:
//     // GridView.builder(
//     //   shrinkWrap: true,
//     //     scrollDirection: Axis.vertical,
//     //     gridDelegate:
//     //     // SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
//     //     //   childAspectRatio: 0.7//
//     //     // ),
//     //     const SliverGridDelegateWithMaxCrossAxisExtent(
//     //         maxCrossAxisExtent: 200,
//     //
//     //         // childAspectRatio: 3 / 2,
//     //         crossAxisSpacing: 20,
//     //         mainAxisSpacing: 20),
//     //     itemCount:controller.productList.length,
//     //     itemBuilder: (context, index) {
//     //       return Container(margin: EdgeInsets.only(right: 10, left: 35),
//     //         width: 200,
//     //         height: 300,
//     //         decoration: BoxDecoration(
//     //             color: Colors.white60,
//     //             borderRadius: BorderRadius.circular(15)
//     //         ),
//     //
//     //         child: Column(mainAxisAlignment: MainAxisAlignment.start,
//     //           children: [
//     //             const SizedBox(height: 15),
//     //             Container(
//     //               height: 100.h,
//     //               width: 80.w,
//     //               decoration: BoxDecoration(
//     //                 image: DecorationImage(
//     //                   image: NetworkImage(
//     //                       controller.productList[index].image.toString()),
//     //                   fit: BoxFit.fill,
//     //                 ),
//     //               ),
//     //             ),
//     //               SizedBox(height: 15),
//     //             BigText(text: 'Vegan Resto'),
//     //
//     //             SizedBox(height: 10,),
//     //             SmallText(text: '12 min'),
//     //             ],
//     //         ),
//     //
//     //
//     //       );
//     //     })
//     GridView.builder(
//     shrinkWrap: true,
//     scrollDirection: Axis.vertical,
//     gridDelegate:
//     const SliverGridDelegateWithMaxCrossAxisExtent(
//     maxCrossAxisExtent: 200,
//     // childAspectRatio: 3 / 2,
//     crossAxisSpacing: 20,
//     mainAxisSpacing: 20),
//     itemCount:5,
//     itemBuilder: (context, index) {
//     return Container(
//     margin: EdgeInsets.only(right: 10, left: 35),
//     width: 200,
//     height: 200,
//     decoration: BoxDecoration(
//     color: Colors.white60,
//     borderRadius: BorderRadius.circular(15)
//     ),
//
//     child: Column(mainAxisAlignment: MainAxisAlignment.start,
//
//     children: [
//     const SizedBox(height: 15),
//     Container(
//     height: 100.h,
//     width: 80.w,
//     decoration: BoxDecoration(
//     image: DecorationImage(
//     image: NetworkImage(
//     '${ data.data![index].pic}'),
//     fit: BoxFit.fill,
//     ),
//     ),
//     ),
//     // Container(
//     // height: 60,
//     // width: 80,
//     // decoration: BoxDecoration(
//     // image: DecorationImage(
//     // image: NetworkImage(
//     //     '${ListProduct[index].imageUrl}'),
//     // fit: BoxFit.fill,
//     // ),
//     // ),
//     // ),
//     SizedBox(height: 15),
//     Text('${ data.data![index].name}'),
//
//     SizedBox(height: 10,),
//     Row(
//     children: [
//     Text('${ data.data![index].price}'),
//     InkWell(child: Icon(Icons.add_shopping_cart_outlined),
//     // onTap: (){
//     //   controller.addToCart();
//     //
//     //
//     // }
//     )
//     ],
//     ),
//     ],
//     ),
//     );
//     })
//     );}
//     else{
//     return  Center(child: CircularProgressIndicator());
//     };
//     })
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//           // ,SizedBox(height: 30),
//           // Row(
//           //   children: [
//           //     SizedBox(width:35),
//           //     BigText(text: 'Popular Menu'),
//           //     SizedBox(width: 100),
//           //     SmallText(text: 'View More', color: Colors.deepOrange),
//           //     SizedBox(height: 10),
//           //   ],
//           // ),
//           // ListView.builder(
//           //     physics: NeverScrollableScrollPhysics(),
//           //     shrinkWrap: true,
//           //     itemCount: 3,
//           //
//           //     itemBuilder: (context,index){
//           //       return Container( height: 120,
//           //
//           //         margin: EdgeInsets.only(left: 35,right: 35,bottom: 25),
//           //         padding: EdgeInsets.only(left: 20),
//           //         decoration: BoxDecoration(
//           //           color: Colors.white60,
//           //           borderRadius: BorderRadius.circular(15),
//           //
//           //         ),
//           //         child: Row(
//           //           children: [
//           //
//           //             Image.asset('assets/images/Menu.png'),
//           //
//           //             Container(  padding: EdgeInsets.only(left: 20,top: 25),
//           //               child: Column(
//           //                 children: [
//           //                   BigText(text: 'Herbal Pancake'),
//           //                   SizedBox(height:15),
//           //                   SmallText(text: 'Warung Herbal'),
//           //                 ],
//           //               ),
//           //
//           //             ),
//           //             SizedBox(width: 17,),
//           //
//           //             Text("\$7",style: TextStyle(fontSize: 22,color: Colors.orange,fontWeight: FontWeight.bold),)
//           //           ],
//           //         ),
//           //
//           //       );
//           //     }
//           // ),
//
//
//         ]),
//       ),
//     );
//   }
// }
//

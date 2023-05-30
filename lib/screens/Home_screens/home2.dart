import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'nearst_resturant_screen.dart';
import 'popular_menu_screen.dart';
import '../filter_screens/filter_screen.dart';
import '../restaurant_screen.dart';
import '../../widgets/big_text.dart';
import '../../widgets/card_items.dart';
import '../../widgets/main_stack.dart';
import '../../widgets/small_text.dart';
import '../../controllers/home_controller.dart';

class Home2 extends StatelessWidget {


  Home2({Key? key}) : super(key: key);
  TextEditingController searchController = TextEditingController();
  PageController pageController = PageController(viewportFraction: 1);

  final controller=Get.put(HomeController());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:

        Column(children: [
          const MainStack(),
          Row(
            children: [
              // CustomTextFormField(
              //   label: 'What do you want to order?',
              //   controller: searchController,
              //   color: Colors.redAccent,
              //   width: 220.w, text: '', ObsecureText: false, validator: (){}, prefixIcon: const Icon(Icons.search), suffixIcon: const Text(''),
              // ),
          GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) => Container(
      margin:  EdgeInsets.only(left: 30.w,right: 30.w),
      height: 45.h,
      width: 220.w,
            child: TextField(
        controller: controller.searchController,
        cursorColor: Colors.black,
        keyboardType: TextInputType.text,
        onChanged: (searchWord) {
            controller.addSearchToList(searchWord);
        },
        decoration: InputDecoration(
            fillColor: Colors.white,
            focusColor: Colors.red,
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            suffixIcon: controller.searchController.text.isNotEmpty
                ? IconButton(
              onPressed: () {
                controller.clearSearch();
              },
              icon: const Icon(
                Icons.close,
                color: Colors.black,
              ),
            )
                : null,
            hintText: "What do you want to order?",
            hintStyle:  TextStyle(
              color: Colors.black45,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10.r),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10.r),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10.r),
            ),
        ),
      ),
          ),
    ),
              Container(
                height: 42.h,
                width: 42.w,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(10.r)),
                child:  GestureDetector(
                  onTap: (){
                    Get.to(()=>FilterScreen());
                  },
                  child: const Icon(
                    Icons.filter_alt_sharp,
                    color: Colors.green,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          Container( margin: EdgeInsets.only(right:30.w ,left: 30.w),
            height: 200.h,
            width:double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
            ),
            child:Image.asset('assets/images/adv.png') ,
          ),
          Row(  mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BigText(text: 'Nearest Restaurant'),
               InkWell(
                   onTap: (){
                       Get.to(()=>const NearstRestaurantScreen());
                   },

                   child: const SmallText(text: 'View More', color: Colors.deepOrange)),
            ],
          ),

          SizedBox(
              height: 480.h,
              child:
              GridView.builder(
                  itemCount:4,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    childAspectRatio: 0.8,
                    mainAxisSpacing: 9.0,
                    crossAxisSpacing: 6.0,
                    maxCrossAxisExtent: 200,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Get.to(()=>const RestaurantScreen());
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10.w, left: 35.w),
                        width: 200.w,
                        height: 200.h,
                        decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(15.r)
                        ),

                        child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                             SizedBox(height: 15.h),
                            Container(
                              height: 80.h,
                              width: 80.w,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/PhotoRestaurant.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(height: 15.h),
                            BigText(text:'Wijie Bar and Resto',fontSize: 15.sp,),

                            SizedBox(height: 10.h),
                            Row(
                              children: const [
                                SmallText(text: '15 min',),

                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  })
          ),



          SizedBox(height: 30.h),
          FutureBuilder(
              future: controller.loadProductsFromrestaurant(),
              builder: (context,AsyncSnapshot snapshot)
              {
                if(snapshot.hasData){
                  // RestaurantModel data=snapshot.data;

                  return GridView.builder(
                      itemCount: controller.products.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        childAspectRatio: 0.8,
                        mainAxisSpacing: 9.0,
                        crossAxisSpacing: 6.0,
                        maxCrossAxisExtent: 200,
                      ),

                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index){
                        return GestureDetector(
                          //  onTap: () => Get.to(DescScreen(title:data.articles![index].title.toString())),
                          // onTap: () => Get.to(DescScreen(newsModel:data,index:index)),
                          child:
                          Card(
                            elevation: 5,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                controller.products[index].pic!=null?
                                Image.network('${ controller.products[index].pic}'):const SizedBox(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('${controller.products[index].name}',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

                                      SizedBox(
                                          width: 350,
                                          height: 70,
                                          child: Text('${controller.products[index].tags1}',
                                            overflow: TextOverflow.ellipsis,maxLines: 2,
                                          )),
                                      // Text('${data.articles![index].description}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),);
                      });}
                else{
                  return  const Center(child: CircularProgressIndicator());
                }

              }


          ),
          SizedBox(height: 50.h,),
          Row(
            children: [
              SizedBox(width:35.w),
              BigText(text: 'Popular Menu'),
              SizedBox(width: 100.w),
              InkWell(
                  onTap: (){
                    Get.to(()=> PopularMenuScreen());
                  },
                  child: const SmallText(text: 'View More', color: Colors.deepOrange)),
              SizedBox(height: 10.h),
            ],
          ),
           CardItems(height: 480.h, count: 3)
        ])
      ),
    );
  }
}


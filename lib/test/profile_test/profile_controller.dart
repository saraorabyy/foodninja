
// import 'dart:convert';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
//
// import '../User_model.dart';
//
//   class ProfileController extends GetxController{
//
//     @override
//     void onInit() {
//       super.onInit();
//       getUserData();
//     }
//
//
//     UserModel ? userModel;
//
//
//     Future getUserData()async{
//
//       final response= await  http.get(Uri.parse('http://178.128.138.57/api/auth/profile/99'),
//
//
//           headers : {
//             'Authorization': '304|WHJ3kuS6035ojUVJPX9AJL43YveLRs0UVvrxGiMx'
//           }
//       );
//
//
//       // var request = http.Request('GET', Uri.parse('178.128.138.57/api/auth/profile/$id'));
//
//       var responseData=jsonDecode(response.body);
//
//       if(responseData['status']==true)
//       {
//         userModel= UserModel.fromJson(json: responseData['data']);
//         // print('succes');
//       }
//       else{
//         // print(responseData['massege']);
//       }
//
//     }
//   }


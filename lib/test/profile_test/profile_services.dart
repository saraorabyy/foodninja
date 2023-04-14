// import 'package:http/http.dart' as http;
//
//
//
// class ProfileService{
//   static Future getProfile()async{
//     var response= await http.get(Uri.parse('https://178.128.138.57/api/auth/profile/1'));
//     if(response.statusCode==404){
//       var jsonData=response.body;
//
//       return Data.fromJson(jsonData);
//
//     }
//     else{
//       return throw Exception('failed to load info');
//
//     }
//   }
// }


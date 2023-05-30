import '../shared_preference/shared_preference.dart';

String validationEmail =
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

String validationName = r'^[a-z A-Z]+$';

   var token=CacheHelper.getDataToSharedPrefrence('token');
   var id=CacheHelper.getDataToSharedPrefrence('id');

   String BaseUrl= 'http://206.189.103.8/api';




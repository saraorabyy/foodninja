import 'product_model/Data.dart';

class UserModel {
  UserModel({
      this.data, 
      this.status,});

  UserModel.fromJson({required json}) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    status = json['status'];
  }
  Data? data;
  bool ?status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data!.toJson();
    }
    map['status'] = status;
    return map;
  }

}
class Data {
  Data({
      this.id, 
      this.name, 
      this.mobile, 
      this.email, 
      this.emailVerifiedAt, 
      this.otp, 
      this.avatar, 
      this.createdAt, 
      this.updatedAt,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    mobile = json['mobile'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    otp = json['otp'];
    avatar = json['avatar'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int ?id;
  String ?name;
  String ?mobile;
  String ?email;
  dynamic emailVerifiedAt;
  String ?otp;
  dynamic avatar;
  String ?createdAt;
  String ?updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['mobile'] = mobile;
    map['email'] = email;
    map['email_verified_at'] = emailVerifiedAt;
    map['otp'] = otp;
    map['avatar'] = avatar;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}
class Rating {
  Rating({
    required this.rate,
    required this.count,});

  Rating.fromJson(dynamic json) {
    rate = json['rate'];
    count = json['count'];
  }
  dynamic rate;
  int ?count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rate'] = rate;
    map['count'] = count;
    return map;
  }

}
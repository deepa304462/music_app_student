/// user : "65290b6746e52731870cd03e"
/// date : "2023-08-17T00:00:00.000Z"
/// time : "5:00PM to 6:00PM"
/// _id : "652fa7ec2a5331d09f0add10"
/// __v : 0

class ApplyCoverClassModel {
  ApplyCoverClassModel({
      String? user, 
      String? date, 
      String? time, 
      String? id, 
      num? v,}){
    _user = user;
    _date = date;
    _time = time;
    _id = id;
    _v = v;
}

  ApplyCoverClassModel.fromJson(dynamic json) {
    _user = json['user'];
    _date = json['date'];
    _time = json['time'];
    _id = json['_id'];
    _v = json['__v'];
  }
  String? _user;
  String? _date;
  String? _time;
  String? _id;
  num? _v;
ApplyCoverClassModel copyWith({  String? user,
  String? date,
  String? time,
  String? id,
  num? v,
}) => ApplyCoverClassModel(  user: user ?? _user,
  date: date ?? _date,
  time: time ?? _time,
  id: id ?? _id,
  v: v ?? _v,
);
  String? get user => _user;
  String? get date => _date;
  String? get time => _time;
  String? get id => _id;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user'] = _user;
    map['date'] = _date;
    map['time'] = _time;
    map['_id'] = _id;
    map['__v'] = _v;
    return map;
  }

}
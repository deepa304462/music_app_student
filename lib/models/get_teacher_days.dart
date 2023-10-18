/// success : true
/// classes : [{"_id":"652e790277a46405ef444931","day":{"_id":"652e6577bf635fb1b551cdb7","name":"Monday","__v":0}}]

class GetTeacherDays {
  GetTeacherDays({
      bool? success, 
      List<DaysClasses>? classes,}){
    _success = success;
    _classes = classes;
}

  GetTeacherDays.fromJson(dynamic json) {
    _success = json['success'];
    if (json['classes'] != null) {
      _classes = [];
      json['classes'].forEach((v) {
        _classes?.add(DaysClasses.fromJson(v));
      });
    }
  }
  bool? _success;
  List<DaysClasses>? _classes;
GetTeacherDays copyWith({  bool? success,
  List<DaysClasses>? classes,
}) => GetTeacherDays(  success: success ?? _success,
  classes: classes ?? _classes,
);
  bool? get success => _success;
  List<DaysClasses>? get classes => _classes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    if (_classes != null) {
      map['classes'] = _classes?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// _id : "652e790277a46405ef444931"
/// day : {"_id":"652e6577bf635fb1b551cdb7","name":"Monday","__v":0}

class DaysClasses {
  DaysClasses({
      String? id, 
      Day? day,}){
    _id = id;
    _day = day;
}

  DaysClasses.fromJson(dynamic json) {
    _id = json['_id'];
    _day = json['day'] != null ? Day.fromJson(json['day']) : null;
  }
  String? _id;
  Day? _day;
DaysClasses copyWith({  String? id,
  Day? day,
}) => DaysClasses(  id: id ?? _id,
  day: day ?? _day,
);
  String? get id => _id;
  Day? get day => _day;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    if (_day != null) {
      map['day'] = _day?.toJson();
    }
    return map;
  }

}

/// _id : "652e6577bf635fb1b551cdb7"
/// name : "Monday"
/// __v : 0

class Day {
  Day({
      String? id, 
      String? name, 
      num? v,}){
    _id = id;
    _name = name;
    _v = v;
}

  Day.fromJson(dynamic json) {
    _id = json['_id'];
    _name = json['name'];
    _v = json['__v'];
  }
  String? _id;
  String? _name;
  num? _v;
Day copyWith({  String? id,
  String? name,
  num? v,
}) => Day(  id: id ?? _id,
  name: name ?? _name,
  v: v ?? _v,
);
  String? get id => _id;
  String? get name => _name;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['name'] = _name;
    map['__v'] = _v;
    return map;
  }

}
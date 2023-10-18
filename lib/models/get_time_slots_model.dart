/// success : true
/// classes : [{"_id":"652e790277a46405ef444931","time":{"_id":"652e69bb54fd60ccba465118","slot":"02:00 PM to 04:00 PM","__v":0}}]

class GetTimeSlotsModel {
  GetTimeSlotsModel({
      bool? success, 
      List<TimeClasses>? classes,}){
    _success = success;
    _classes = classes;
}

  GetTimeSlotsModel.fromJson(dynamic json) {
    _success = json['success'];
    if (json['classes'] != null) {
      _classes = [];
      json['classes'].forEach((v) {
        _classes?.add(TimeClasses.fromJson(v));
      });
    }
  }
  bool? _success;
  List<TimeClasses>? _classes;
GetTimeSlotsModel copyWith({  bool? success,
  List<TimeClasses>? classes,
}) => GetTimeSlotsModel(  success: success ?? _success,
  classes: classes ?? _classes,
);
  bool? get success => _success;
  List<TimeClasses>? get classes => _classes;

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
/// time : {"_id":"652e69bb54fd60ccba465118","slot":"02:00 PM to 04:00 PM","__v":0}

class TimeClasses {
  TimeClasses({
      String? id, 
      Time? time,}){
    _id = id;
    _time = time;
}

  TimeClasses.fromJson(dynamic json) {
    _id = json['_id'];
    _time = json['time'] != null ? Time.fromJson(json['time']) : null;
  }
  String? _id;
  Time? _time;
TimeClasses copyWith({  String? id,
  Time? time,
}) => TimeClasses(  id: id ?? _id,
  time: time ?? _time,
);
  String? get id => _id;
  Time? get time => _time;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    if (_time != null) {
      map['time'] = _time?.toJson();
    }
    return map;
  }

}

/// _id : "652e69bb54fd60ccba465118"
/// slot : "02:00 PM to 04:00 PM"
/// __v : 0

class Time {
  Time({
      String? id, 
      String? slot, 
      num? v,}){
    _id = id;
    _slot = slot;
    _v = v;
}

  Time.fromJson(dynamic json) {
    _id = json['_id'];
    _slot = json['slot'];
    _v = json['__v'];
  }
  String? _id;
  String? _slot;
  num? _v;
Time copyWith({  String? id,
  String? slot,
  num? v,
}) => Time(  id: id ?? _id,
  slot: slot ?? _slot,
  v: v ?? _v,
);
  String? get id => _id;
  String? get slot => _slot;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['slot'] = _slot;
    map['__v'] = _v;
    return map;
  }

}
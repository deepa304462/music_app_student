/// success : true
/// classes : [{"_id":"64c3b3680bb50d5ce73d26d9","time":"12:00 PM to 01:00PM"},{"_id":"64c3bb72c1a44d55c4a52264","time":"03:00 PM to 04:00PM"},{"_id":"64c3bd1dc42136f840981de7","time":"05:00 PM to 06:00PM"},{"_id":"64c3bd7cb7742d19dfa7c9a3","time":"05:00 PM to 06:00PM"},{"_id":"64c3bd9cb7742d19dfa7c9a7","time":"05:00 PM to 06:00PM"},{"_id":"64c3be0bb7742d19dfa7c9ab","time":"05:00 PM to 06:00PM"},{"_id":"64c4f5676d93dcd4a10da8d1","time":"05:00 PM to 06:00PM"},{"_id":"64c507ccb10f215a721aa5d7","time":"05:00 PM to 06:00PM"},{"_id":"64c509e2e4b8a1aeb7af5721","time":"05:00 PM to 06:00PM"}]

class GetTimeSlotsModel {
  GetTimeSlotsModel({
      bool? success, 
      List<Classes>? classes,}){
    _success = success;
    _classes = classes;
}

  GetTimeSlotsModel.fromJson(dynamic json) {
    _success = json['success'];
    if (json['classes'] != null) {
      _classes = [];
      json['classes'].forEach((v) {
        _classes?.add(Classes.fromJson(v));
      });
    }
  }
  bool? _success;
  List<Classes>? _classes;
GetTimeSlotsModel copyWith({  bool? success,
  List<Classes>? classes,
}) => GetTimeSlotsModel(  success: success ?? _success,
  classes: classes ?? _classes,
);
  bool? get success => _success;
  List<Classes>? get classes => _classes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    if (_classes != null) {
      map['classes'] = _classes?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// _id : "64c3b3680bb50d5ce73d26d9"
/// time : "12:00 PM to 01:00PM"

class Classes {
  Classes({
      String? id, 
      String? time,}){
    _id = id;
    _time = time;
}

  Classes.fromJson(dynamic json) {
    _id = json['_id'];
    _time = json['time'];
  }
  String? _id;
  String? _time;
Classes copyWith({  String? id,
  String? time,
}) => Classes(  id: id ?? _id,
  time: time ?? _time,
);
  String? get id => _id;
  String? get time => _time;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['time'] = _time;
    return map;
  }

}
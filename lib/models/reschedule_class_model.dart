/// reason : "Yoga Class"
/// date : "2023-08-11T00:00:00.000Z"
/// rescheduleDate : "2023-10-17T00:00:00.000Z"
/// time : "2:38 PM"
/// user : "64774f266fb41e3dae640985"
/// classes : "6479ce1b7d1adc32e06d74e2"
/// description : "busy"
/// rescheduleOnSameDay : true
/// rescheduleOnAnotherDay : false
/// _id : "652e531fd2dee11f7f58c9eb"
/// __v : 0

class RescheduleClassModel {
  RescheduleClassModel({
      String? reason, 
      String? date, 
      String? rescheduleDate, 
      String? time, 
      String? user, 
      String? classes, 
      String? description, 
      bool? rescheduleOnSameDay, 
      bool? rescheduleOnAnotherDay, 
      String? id, 
      num? v,}){
    _reason = reason;
    _date = date;
    _rescheduleDate = rescheduleDate;
    _time = time;
    _user = user;
    _classes = classes;
    _description = description;
    _rescheduleOnSameDay = rescheduleOnSameDay;
    _rescheduleOnAnotherDay = rescheduleOnAnotherDay;
    _id = id;
    _v = v;
}

  RescheduleClassModel.fromJson(dynamic json) {
    _reason = json['reason'];
    _date = json['date'];
    _rescheduleDate = json['rescheduleDate'];
    _time = json['time'];
    _user = json['user'];
    _classes = json['classes'];
    _description = json['description'];
    _rescheduleOnSameDay = json['rescheduleOnSameDay'];
    _rescheduleOnAnotherDay = json['rescheduleOnAnotherDay'];
    _id = json['_id'];
    _v = json['__v'];
  }
  String? _reason;
  String? _date;
  String? _rescheduleDate;
  String? _time;
  String? _user;
  String? _classes;
  String? _description;
  bool? _rescheduleOnSameDay;
  bool? _rescheduleOnAnotherDay;
  String? _id;
  num? _v;
RescheduleClassModel copyWith({  String? reason,
  String? date,
  String? rescheduleDate,
  String? time,
  String? user,
  String? classes,
  String? description,
  bool? rescheduleOnSameDay,
  bool? rescheduleOnAnotherDay,
  String? id,
  num? v,
}) => RescheduleClassModel(  reason: reason ?? _reason,
  date: date ?? _date,
  rescheduleDate: rescheduleDate ?? _rescheduleDate,
  time: time ?? _time,
  user: user ?? _user,
  classes: classes ?? _classes,
  description: description ?? _description,
  rescheduleOnSameDay: rescheduleOnSameDay ?? _rescheduleOnSameDay,
  rescheduleOnAnotherDay: rescheduleOnAnotherDay ?? _rescheduleOnAnotherDay,
  id: id ?? _id,
  v: v ?? _v,
);
  String? get reason => _reason;
  String? get date => _date;
  String? get rescheduleDate => _rescheduleDate;
  String? get time => _time;
  String? get user => _user;
  String? get classes => _classes;
  String? get description => _description;
  bool? get rescheduleOnSameDay => _rescheduleOnSameDay;
  bool? get rescheduleOnAnotherDay => _rescheduleOnAnotherDay;
  String? get id => _id;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['reason'] = _reason;
    map['date'] = _date;
    map['rescheduleDate'] = _rescheduleDate;
    map['time'] = _time;
    map['user'] = _user;
    map['classes'] = _classes;
    map['description'] = _description;
    map['rescheduleOnSameDay'] = _rescheduleOnSameDay;
    map['rescheduleOnAnotherDay'] = _rescheduleOnAnotherDay;
    map['_id'] = _id;
    map['__v'] = _v;
    return map;
  }

}
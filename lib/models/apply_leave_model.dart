/// success : true
/// msg : "Leave request sent"
/// leave : {"reason":" feeling bad","startDate":"2023-10-17T00:00:00.000Z","endDate":"2023-10-18T00:00:00.000Z","user":"65290b6746e52731870cd03e","description":"fever","result":"pending","_id":"652e51b8d2dee11f7f58c9c8","__v":0}

class ApplyLeaveModel {
  ApplyLeaveModel({
      bool? success, 
      String? msg, 
      Leave? leave,}){
    _success = success;
    _msg = msg;
    _leave = leave;
}

  ApplyLeaveModel.fromJson(dynamic json) {
    _success = json['success'];
    _msg = json['msg'];
    _leave = json['leave'] != null ? Leave.fromJson(json['leave']) : null;
  }
  bool? _success;
  String? _msg;
  Leave? _leave;
ApplyLeaveModel copyWith({  bool? success,
  String? msg,
  Leave? leave,
}) => ApplyLeaveModel(  success: success ?? _success,
  msg: msg ?? _msg,
  leave: leave ?? _leave,
);
  bool? get success => _success;
  String? get msg => _msg;
  Leave? get leave => _leave;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['msg'] = _msg;
    if (_leave != null) {
      map['leave'] = _leave?.toJson();
    }
    return map;
  }

}

/// reason : " feeling bad"
/// startDate : "2023-10-17T00:00:00.000Z"
/// endDate : "2023-10-18T00:00:00.000Z"
/// user : "65290b6746e52731870cd03e"
/// description : "fever"
/// result : "pending"
/// _id : "652e51b8d2dee11f7f58c9c8"
/// __v : 0

class Leave {
  Leave({
      String? reason, 
      String? startDate, 
      String? endDate, 
      String? user, 
      String? description, 
      String? result, 
      String? id, 
      num? v,}){
    _reason = reason;
    _startDate = startDate;
    _endDate = endDate;
    _user = user;
    _description = description;
    _result = result;
    _id = id;
    _v = v;
}

  Leave.fromJson(dynamic json) {
    _reason = json['reason'];
    _startDate = json['startDate'];
    _endDate = json['endDate'];
    _user = json['user'];
    _description = json['description'];
    _result = json['result'];
    _id = json['_id'];
    _v = json['__v'];
  }
  String? _reason;
  String? _startDate;
  String? _endDate;
  String? _user;
  String? _description;
  String? _result;
  String? _id;
  num? _v;
Leave copyWith({  String? reason,
  String? startDate,
  String? endDate,
  String? user,
  String? description,
  String? result,
  String? id,
  num? v,
}) => Leave(  reason: reason ?? _reason,
  startDate: startDate ?? _startDate,
  endDate: endDate ?? _endDate,
  user: user ?? _user,
  description: description ?? _description,
  result: result ?? _result,
  id: id ?? _id,
  v: v ?? _v,
);
  String? get reason => _reason;
  String? get startDate => _startDate;
  String? get endDate => _endDate;
  String? get user => _user;
  String? get description => _description;
  String? get result => _result;
  String? get id => _id;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['reason'] = _reason;
    map['startDate'] = _startDate;
    map['endDate'] = _endDate;
    map['user'] = _user;
    map['description'] = _description;
    map['result'] = _result;
    map['_id'] = _id;
    map['__v'] = _v;
    return map;
  }

}
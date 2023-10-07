/// success : true
/// subjects : [{"_id":"64d63c1cd4c343339c84fcda","subject":"Guitar","image":"https://res.cloudinary.com/dtijhcmaa/image/upload/v1691761690/images/image/izpwmx2fmrjjwdfqyjnq.jpg","__v":0}]

class GetInstrumentModel {
  GetInstrumentModel({
      bool? success, 
      List<Subjects>? subjects,}){
    _success = success;
    _subjects = subjects;
}

  GetInstrumentModel.fromJson(dynamic json) {
    _success = json['success'];
    if (json['subjects'] != null) {
      _subjects = [];
      json['subjects'].forEach((v) {
        _subjects?.add(Subjects.fromJson(v));
      });
    }
  }
  bool? _success;
  List<Subjects>? _subjects;
GetInstrumentModel copyWith({  bool? success,
  List<Subjects>? subjects,
}) => GetInstrumentModel(  success: success ?? _success,
  subjects: subjects ?? _subjects,
);
  bool? get success => _success;
  List<Subjects>? get subjects => _subjects;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    if (_subjects != null) {
      map['subjects'] = _subjects?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// _id : "64d63c1cd4c343339c84fcda"
/// subject : "Guitar"
/// image : "https://res.cloudinary.com/dtijhcmaa/image/upload/v1691761690/images/image/izpwmx2fmrjjwdfqyjnq.jpg"
/// __v : 0

class Subjects {
  Subjects({
      String? id, 
      String? subject, 
      String? image, 
      num? v,}){
    _id = id;
    _subject = subject;
    _image = image;
    _v = v;
}

  Subjects.fromJson(dynamic json) {
    _id = json['_id'];
    _subject = json['subject'];
    _image = json['image'];
    _v = json['__v'];
  }
  String? _id;
  String? _subject;
  String? _image;
  num? _v;
Subjects copyWith({  String? id,
  String? subject,
  String? image,
  num? v,
}) => Subjects(  id: id ?? _id,
  subject: subject ?? _subject,
  image: image ?? _image,
  v: v ?? _v,
);
  String? get id => _id;
  String? get subject => _subject;
  String? get image => _image;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['subject'] = _subject;
    map['image'] = _image;
    map['__v'] = _v;
    return map;
  }

}
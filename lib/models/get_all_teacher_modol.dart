/// success : true
/// teachers : [{"ratings":"0","_id":"647ef9dd000f0daebd9d8004","name":"faizanwer3","experience":"5years","profilePicture":"https://res.cloudinary.com/dtijhcmaa/image/upload/v1692599846/images/image/vsp564qrogvk66ig4tmq.jpg","rating":2}]

class GetAllTeacherModol {
  GetAllTeacherModol({
    bool? success,
    List<Teachers>? teachers,
  }) {
    _success = success;
    _teachers = teachers;
  }

  GetAllTeacherModol.fromJson(dynamic json) {
    _success = json['success'];
    if (json['teachers'] != null) {
      _teachers = [];
      json['teachers'].forEach((v) {
        _teachers?.add(Teachers.fromJson(v));
      });
    }
  }

  bool? _success;
  List<Teachers>? _teachers;

  GetAllTeacherModol copyWith({
    bool? success,
    List<Teachers>? teachers,
  }) =>
      GetAllTeacherModol(
        success: success ?? _success,
        teachers: teachers ?? _teachers,
      );

  bool? get success => _success;

  List<Teachers>? get teachers => _teachers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    if (_teachers != null) {
      map['teachers'] = _teachers?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// ratings : "0"
/// _id : "647ef9dd000f0daebd9d8004"
/// name : "faizanwer3"
/// experience : "5years"
/// profilePicture : "https://res.cloudinary.com/dtijhcmaa/image/upload/v1692599846/images/image/vsp564qrogvk66ig4tmq.jpg"
/// rating : 2

class Teachers {
  Teachers({
    String? ratings,
    String? id,
    bool? isSelected,
    String? name,
    String? experience,
    String? profilePicture,
    num? rating,
  }) {
    _ratings = ratings;
    _id = id;
    _isSelected = isSelected;
    _name = name;
    _experience = experience;
    _profilePicture = profilePicture;
    _rating = rating;
  }

  Teachers.fromJson(dynamic json) {
    _ratings = json['ratings'];
    _id = json['_id'];
    _name = json['name'];
    _experience = json['experience'];
    _profilePicture = json['profilePicture'];
    _rating = json['rating'];
  }

  String? _ratings;
  String? _id;
  bool? _isSelected = false;
  String? _name;
  String? _experience;
  String? _profilePicture;
  num? _rating;

  Teachers copyWith({
    String? ratings,
    String? id,
    String? name,
    String? experience,
    String? profilePicture,
    num? rating,
  }) =>
      Teachers(
        ratings: ratings ?? _ratings,
        id: id ?? _id,
        name: name ?? _name,
        experience: experience ?? _experience,
        profilePicture: profilePicture ?? _profilePicture,
        rating: rating ?? _rating,
      );

  String? get ratings => _ratings;
  bool? get isSelected => _isSelected;

  set isSelected(bool? value) {
    _isSelected = value;
  }

  String? get id => _id;

  String? get name => _name;

  String? get experience => _experience;

  String? get profilePicture => _profilePicture;

  num? get rating => _rating;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ratings'] = _ratings;
    map['_id'] = _id;
    map['name'] = _name;
    map['experience'] = _experience;
    map['profilePicture'] = _profilePicture;
    map['rating'] = _rating;
    return map;
  }
}

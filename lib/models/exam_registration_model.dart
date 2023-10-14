/// success : true
/// examRegistration : {"name":"faiz","email":"faiz@gmail.com","gender":"Male","subject":"guitar","skillLevel":"Beginner","grade":"A","panNumber":123456789,"musicBoard":"Music","user":"65290b6746e52731870cd03e","_id":"652a557680262097b53f2b36","__v":0}

class ExamRegistrationModel {
  ExamRegistrationModel({
      bool? success, 
      ExamRegistration? examRegistration,}){
    _success = success;
    _examRegistration = examRegistration;
}

  ExamRegistrationModel.fromJson(dynamic json) {
    _success = json['success'];
    _examRegistration = json['examRegistration'] != null ? ExamRegistration.fromJson(json['examRegistration']) : null;
  }
  bool? _success;
  ExamRegistration? _examRegistration;
ExamRegistrationModel copyWith({  bool? success,
  ExamRegistration? examRegistration,
}) => ExamRegistrationModel(  success: success ?? _success,
  examRegistration: examRegistration ?? _examRegistration,
);
  bool? get success => _success;
  ExamRegistration? get examRegistration => _examRegistration;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    if (_examRegistration != null) {
      map['examRegistration'] = _examRegistration?.toJson();
    }
    return map;
  }

}

/// name : "faiz"
/// email : "faiz@gmail.com"
/// gender : "Male"
/// subject : "guitar"
/// skillLevel : "Beginner"
/// grade : "A"
/// panNumber : 123456789
/// musicBoard : "Music"
/// user : "65290b6746e52731870cd03e"
/// _id : "652a557680262097b53f2b36"
/// __v : 0

class ExamRegistration {
  ExamRegistration({
      String? name, 
      String? email, 
      String? gender, 
      String? subject, 
      String? skillLevel, 
      String? grade, 
      num? panNumber, 
      String? musicBoard, 
      String? user, 
      String? id, 
      num? v,}){
    _name = name;
    _email = email;
    _gender = gender;
    _subject = subject;
    _skillLevel = skillLevel;
    _grade = grade;
    _panNumber = panNumber;
    _musicBoard = musicBoard;
    _user = user;
    _id = id;
    _v = v;
}

  ExamRegistration.fromJson(dynamic json) {
    _name = json['name'];
    _email = json['email'];
    _gender = json['gender'];
    _subject = json['subject'];
    _skillLevel = json['skillLevel'];
    _grade = json['grade'];
    _panNumber = json['panNumber'];
    _musicBoard = json['musicBoard'];
    _user = json['user'];
    _id = json['_id'];
    _v = json['__v'];
  }
  String? _name;
  String? _email;
  String? _gender;
  String? _subject;
  String? _skillLevel;
  String? _grade;
  num? _panNumber;
  String? _musicBoard;
  String? _user;
  String? _id;
  num? _v;
ExamRegistration copyWith({  String? name,
  String? email,
  String? gender,
  String? subject,
  String? skillLevel,
  String? grade,
  num? panNumber,
  String? musicBoard,
  String? user,
  String? id,
  num? v,
}) => ExamRegistration(  name: name ?? _name,
  email: email ?? _email,
  gender: gender ?? _gender,
  subject: subject ?? _subject,
  skillLevel: skillLevel ?? _skillLevel,
  grade: grade ?? _grade,
  panNumber: panNumber ?? _panNumber,
  musicBoard: musicBoard ?? _musicBoard,
  user: user ?? _user,
  id: id ?? _id,
  v: v ?? _v,
);
  String? get name => _name;
  String? get email => _email;
  String? get gender => _gender;
  String? get subject => _subject;
  String? get skillLevel => _skillLevel;
  String? get grade => _grade;
  num? get panNumber => _panNumber;
  String? get musicBoard => _musicBoard;
  String? get user => _user;
  String? get id => _id;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['email'] = _email;
    map['gender'] = _gender;
    map['subject'] = _subject;
    map['skillLevel'] = _skillLevel;
    map['grade'] = _grade;
    map['panNumber'] = _panNumber;
    map['musicBoard'] = _musicBoard;
    map['user'] = _user;
    map['_id'] = _id;
    map['__v'] = _v;
    return map;
  }

}
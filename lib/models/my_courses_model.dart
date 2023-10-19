/// studentDetails : {"user":{"profilePicture":"","gold":"0","silver":"0","bronze":"0","teachingHours":0,"level":"0","pincode":"","dateOfBirth":null,"_id":"648804ceaea1ee6a21dacad7","number":1941231230,"email":"","otp":null,"password":"$2b$10$XTQKRoMoFOBNOmzbReBu..wovpXqBpiyKyWCy69.k.pbM0ilWtip6","classCredited":10,"role":"user","createdAt":"2023-06-13T05:55:26.288Z","__v":0,"address":"","alternateNumber":"","city":"","classFrequency":"","classesAttended":5,"classesConsumed":8,"classesRemaining":5,"country":"","coverLeft":"011","gender":"","instruments":"","isVerified":false,"modeOFClass":"","name":"","prefferedPaymentSchedule":"","skillLevel":"","state":"","typeOfSession":"","late":4,"approvedLeave":2,"address1":"","address2":""},"classes":[{"_id":"64c507ccb10f215a721aa5d7","name":"my class","teacher":{"teachingHour":{"total":"0","month":"0","beginner":"0","intermediate":0,"advanced":"0"},"ratings":"0","experience":"0","rating":0,"total":0,"highflyBadge":"0","_id":"64c0ca71c8248b4beec40b50","name":"usernameController.text","email":"newresetpassword@gmail.com","number":123123789,"role":"teacher","mode":"offline","createdAt":"2023-07-26T07:25:37.846Z","__v":0,"otp":"5405","dateofBirth":"01-01-2000","panNumber":"123ABCDEF456","profilePicture":"https://res.cloudinary.com/dtijhcmaa/image/upload/v1692478963/images/image/vbdlrt7tgq7f7dffkzyc.png"},"subject":{"_id":"64c3bb45c1a44d55c4a52260","subject":"Drum","skillLevel":[{"level":"Beginner","_id":"64c3bb45c1a44d55c4a52261"}],"__v":0}},{"_id":"64c509e2e4b8a1aeb7af5721","name":"my class","teacher":{"teachingHour":{"total":"0","month":"0","beginner":"0","intermediate":0,"advanced":"0"},"ratings":"0","experience":"0","rating":0,"total":0,"highflyBadge":"0","_id":"64c0ca71c8248b4beec40b50","name":"usernameController.text","email":"newresetpassword@gmail.com","number":123123789,"role":"teacher","mode":"offline","createdAt":"2023-07-26T07:25:37.846Z","__v":0,"otp":"5405","dateofBirth":"01-01-2000","panNumber":"123ABCDEF456","profilePicture":"https://res.cloudinary.com/dtijhcmaa/image/upload/v1692478963/images/image/vbdlrt7tgq7f7dffkzyc.png"},"subject":{"_id":"64c3bb45c1a44d55c4a52260","subject":"Drum","skillLevel":[{"level":"Beginner","_id":"64c3bb45c1a44d55c4a52261"}],"__v":0}},{"_id":"64dc6f2550f74ecb29523811","name":"my class","teacher":{"teachingHour":{"total":"0","month":"0","beginner":"0","intermediate":0,"advanced":"0"},"ratings":"0","experience":"0","rating":0,"total":0,"highflyBadge":"0","_id":"64c01791af18591891d0978d","name":"Aditya  sharma","email":"ad8@gmail.com","number":8423472807,"role":"teacher","mode":"offline","createdAt":"2023-07-25T18:42:25.091Z","__v":0,"dateofBirth":"05/06/2002","panNumber":"754778658659","profilePicture":"https://res.cloudinary.com/dtijhcmaa/image/upload/v1692600865/images/image/gwlwrvchvfh53whea92b.jpg"},"subject":{"_id":"64d63c1cd4c343339c84fcda","subject":"Guitar","image":"https://res.cloudinary.com/dtijhcmaa/image/upload/v1691761690/images/image/izpwmx2fmrjjwdfqyjnq.jpg","skillLevel":[],"__v":0}}]}

class MyCoursesModel {
  MyCoursesModel({
      StudentDetails? studentDetails,}){
    _studentDetails = studentDetails;
}

  MyCoursesModel.fromJson(dynamic json) {
    _studentDetails = json['studentDetails'] != null ? StudentDetails.fromJson(json['studentDetails']) : null;
  }
  StudentDetails? _studentDetails;
MyCoursesModel copyWith({  StudentDetails? studentDetails,
}) => MyCoursesModel(  studentDetails: studentDetails ?? _studentDetails,
);
  StudentDetails? get studentDetails => _studentDetails;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_studentDetails != null) {
      map['studentDetails'] = _studentDetails?.toJson();
    }
    return map;
  }

}

/// user : {"profilePicture":"","gold":"0","silver":"0","bronze":"0","teachingHours":0,"level":"0","pincode":"","dateOfBirth":null,"_id":"648804ceaea1ee6a21dacad7","number":1941231230,"email":"","otp":null,"password":"$2b$10$XTQKRoMoFOBNOmzbReBu..wovpXqBpiyKyWCy69.k.pbM0ilWtip6","classCredited":10,"role":"user","createdAt":"2023-06-13T05:55:26.288Z","__v":0,"address":"","alternateNumber":"","city":"","classFrequency":"","classesAttended":5,"classesConsumed":8,"classesRemaining":5,"country":"","coverLeft":"011","gender":"","instruments":"","isVerified":false,"modeOFClass":"","name":"","prefferedPaymentSchedule":"","skillLevel":"","state":"","typeOfSession":"","late":4,"approvedLeave":2,"address1":"","address2":""}
/// classes : [{"_id":"64c507ccb10f215a721aa5d7","name":"my class","teacher":{"teachingHour":{"total":"0","month":"0","beginner":"0","intermediate":0,"advanced":"0"},"ratings":"0","experience":"0","rating":0,"total":0,"highflyBadge":"0","_id":"64c0ca71c8248b4beec40b50","name":"usernameController.text","email":"newresetpassword@gmail.com","number":123123789,"role":"teacher","mode":"offline","createdAt":"2023-07-26T07:25:37.846Z","__v":0,"otp":"5405","dateofBirth":"01-01-2000","panNumber":"123ABCDEF456","profilePicture":"https://res.cloudinary.com/dtijhcmaa/image/upload/v1692478963/images/image/vbdlrt7tgq7f7dffkzyc.png"},"subject":{"_id":"64c3bb45c1a44d55c4a52260","subject":"Drum","skillLevel":[{"level":"Beginner","_id":"64c3bb45c1a44d55c4a52261"}],"__v":0}},{"_id":"64c509e2e4b8a1aeb7af5721","name":"my class","teacher":{"teachingHour":{"total":"0","month":"0","beginner":"0","intermediate":0,"advanced":"0"},"ratings":"0","experience":"0","rating":0,"total":0,"highflyBadge":"0","_id":"64c0ca71c8248b4beec40b50","name":"usernameController.text","email":"newresetpassword@gmail.com","number":123123789,"role":"teacher","mode":"offline","createdAt":"2023-07-26T07:25:37.846Z","__v":0,"otp":"5405","dateofBirth":"01-01-2000","panNumber":"123ABCDEF456","profilePicture":"https://res.cloudinary.com/dtijhcmaa/image/upload/v1692478963/images/image/vbdlrt7tgq7f7dffkzyc.png"},"subject":{"_id":"64c3bb45c1a44d55c4a52260","subject":"Drum","skillLevel":[{"level":"Beginner","_id":"64c3bb45c1a44d55c4a52261"}],"__v":0}},{"_id":"64dc6f2550f74ecb29523811","name":"my class","teacher":{"teachingHour":{"total":"0","month":"0","beginner":"0","intermediate":0,"advanced":"0"},"ratings":"0","experience":"0","rating":0,"total":0,"highflyBadge":"0","_id":"64c01791af18591891d0978d","name":"Aditya  sharma","email":"ad8@gmail.com","number":8423472807,"role":"teacher","mode":"offline","createdAt":"2023-07-25T18:42:25.091Z","__v":0,"dateofBirth":"05/06/2002","panNumber":"754778658659","profilePicture":"https://res.cloudinary.com/dtijhcmaa/image/upload/v1692600865/images/image/gwlwrvchvfh53whea92b.jpg"},"subject":{"_id":"64d63c1cd4c343339c84fcda","subject":"Guitar","image":"https://res.cloudinary.com/dtijhcmaa/image/upload/v1691761690/images/image/izpwmx2fmrjjwdfqyjnq.jpg","skillLevel":[],"__v":0}}]

class StudentDetails {
  StudentDetails({
      User? user, 
      List<MyClasses>? classes,}){
    _user = user;
    _classes = classes;
}

  StudentDetails.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    if (json['classes'] != null) {
      _classes = [];
      json['classes'].forEach((v) {
        _classes?.add(MyClasses.fromJson(v));
      });
    }
  }
  User? _user;
  List<MyClasses>? _classes;
StudentDetails copyWith({  User? user,
  List<MyClasses>? classes,
}) => StudentDetails(  user: user ?? _user,
  classes: classes ?? _classes,
);
  User? get user => _user;
  List<MyClasses>? get classes => _classes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    if (_classes != null) {
      map['classes'] = _classes?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// _id : "64c507ccb10f215a721aa5d7"
/// name : "my class"
/// teacher : {"teachingHour":{"total":"0","month":"0","beginner":"0","intermediate":0,"advanced":"0"},"ratings":"0","experience":"0","rating":0,"total":0,"highflyBadge":"0","_id":"64c0ca71c8248b4beec40b50","name":"usernameController.text","email":"newresetpassword@gmail.com","number":123123789,"role":"teacher","mode":"offline","createdAt":"2023-07-26T07:25:37.846Z","__v":0,"otp":"5405","dateofBirth":"01-01-2000","panNumber":"123ABCDEF456","profilePicture":"https://res.cloudinary.com/dtijhcmaa/image/upload/v1692478963/images/image/vbdlrt7tgq7f7dffkzyc.png"}
/// subject : {"_id":"64c3bb45c1a44d55c4a52260","subject":"Drum","skillLevel":[{"level":"Beginner","_id":"64c3bb45c1a44d55c4a52261"}],"__v":0}

class MyClasses {
  MyClasses({
      String? id, 
      String? name, 
      Teacher? teacher, 
      Subject? subject,}){
    _id = id;
    _name = name;
    _teacher = teacher;
    _subject = subject;
}

  MyClasses.fromJson(dynamic json) {
    _id = json['_id'];
    _name = json['name'];
    _teacher = json['teacher'] != null ? Teacher.fromJson(json['teacher']) : null;
    _subject = json['subject'] != null ? Subject.fromJson(json['subject']) : null;
  }
  String? _id;
  String? _name;
  Teacher? _teacher;
  Subject? _subject;
MyClasses copyWith({  String? id,
  String? name,
  Teacher? teacher,
  Subject? subject,
}) => MyClasses(  id: id ?? _id,
  name: name ?? _name,
  teacher: teacher ?? _teacher,
  subject: subject ?? _subject,
);
  String? get id => _id;
  String? get name => _name;
  Teacher? get teacher => _teacher;
  Subject? get subject => _subject;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['name'] = _name;
    if (_teacher != null) {
      map['teacher'] = _teacher?.toJson();
    }
    if (_subject != null) {
      map['subject'] = _subject?.toJson();
    }
    return map;
  }

}

/// _id : "64c3bb45c1a44d55c4a52260"
/// subject : "Drum"
/// skillLevel : [{"level":"Beginner","_id":"64c3bb45c1a44d55c4a52261"}]
/// __v : 0

class Subject {
  Subject({
      String? id, 
      String? subject, 
      List<SkillLevel>? skillLevel, 
      num? v,}){
    _id = id;
    _subject = subject;
    _skillLevel = skillLevel;
    _v = v;
}

  Subject.fromJson(dynamic json) {
    _id = json['_id'];
    _subject = json['subject'];
    if (json['skillLevel'] != null) {
      _skillLevel = [];
      json['skillLevel'].forEach((v) {
        _skillLevel?.add(SkillLevel.fromJson(v));
      });
    }
    _v = json['__v'];
  }
  String? _id;
  String? _subject;
  List<SkillLevel>? _skillLevel;
  num? _v;
Subject copyWith({  String? id,
  String? subject,
  List<SkillLevel>? skillLevel,
  num? v,
}) => Subject(  id: id ?? _id,
  subject: subject ?? _subject,
  skillLevel: skillLevel ?? _skillLevel,
  v: v ?? _v,
);
  String? get id => _id;
  String? get subject => _subject;
  List<SkillLevel>? get skillLevel => _skillLevel;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['subject'] = _subject;
    if (_skillLevel != null) {
      map['skillLevel'] = _skillLevel?.map((v) => v.toJson()).toList();
    }
    map['__v'] = _v;
    return map;
  }

}

/// level : "Beginner"
/// _id : "64c3bb45c1a44d55c4a52261"

class SkillLevel {
  SkillLevel({
      String? level, 
      String? id,}){
    _level = level;
    _id = id;
}

  SkillLevel.fromJson(dynamic json) {
    _level = json['level'];
    _id = json['_id'];
  }
  String? _level;
  String? _id;
SkillLevel copyWith({  String? level,
  String? id,
}) => SkillLevel(  level: level ?? _level,
  id: id ?? _id,
);
  String? get level => _level;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['level'] = _level;
    map['_id'] = _id;
    return map;
  }

}

/// teachingHour : {"total":"0","month":"0","beginner":"0","intermediate":0,"advanced":"0"}
/// ratings : "0"
/// experience : "0"
/// rating : 0
/// total : 0
/// highflyBadge : "0"
/// _id : "64c0ca71c8248b4beec40b50"
/// name : "usernameController.text"
/// email : "newresetpassword@gmail.com"
/// number : 123123789
/// role : "teacher"
/// mode : "offline"
/// createdAt : "2023-07-26T07:25:37.846Z"
/// __v : 0
/// otp : "5405"
/// dateofBirth : "01-01-2000"
/// panNumber : "123ABCDEF456"
/// profilePicture : "https://res.cloudinary.com/dtijhcmaa/image/upload/v1692478963/images/image/vbdlrt7tgq7f7dffkzyc.png"

class Teacher {
  Teacher({
      TeachingHour? teachingHour, 
      String? ratings, 
      String? experience, 
      num? rating, 
      num? total, 
      String? highflyBadge, 
      String? id, 
      String? name, 
      String? email, 
      num? number, 
      String? role, 
      String? mode, 
      String? createdAt, 
      num? v, 
      String? otp, 
      String? dateofBirth, 
      String? panNumber, 
      String? profilePicture,}){
    _teachingHour = teachingHour;
    _ratings = ratings;
    _experience = experience;
    _rating = rating;
    _total = total;
    _highflyBadge = highflyBadge;
    _id = id;
    _name = name;
    _email = email;
    _number = number;
    _role = role;
    _mode = mode;
    _createdAt = createdAt;
    _v = v;
    _otp = otp;
    _dateofBirth = dateofBirth;
    _panNumber = panNumber;
    _profilePicture = profilePicture;
}

  Teacher.fromJson(dynamic json) {
    _teachingHour = json['teachingHour'] != null ? TeachingHour.fromJson(json['teachingHour']) : null;
    _ratings = json['ratings'];
    _experience = json['experience'];
    _rating = json['rating'];
    _total = json['total'];
    _highflyBadge = json['highflyBadge'];
    _id = json['_id'];
    _name = json['name'];
    _email = json['email'];
    _number = json['number'];
    _role = json['role'];
    _mode = json['mode'];
    _createdAt = json['createdAt'];
    _v = json['__v'];
    _otp = json['otp'];
    _dateofBirth = json['dateofBirth'];
    _panNumber = json['panNumber'];
    _profilePicture = json['profilePicture'];
  }
  TeachingHour? _teachingHour;
  String? _ratings;
  String? _experience;
  num? _rating;
  num? _total;
  String? _highflyBadge;
  String? _id;
  String? _name;
  String? _email;
  num? _number;
  String? _role;
  String? _mode;
  String? _createdAt;
  num? _v;
  String? _otp;
  String? _dateofBirth;
  String? _panNumber;
  String? _profilePicture;
Teacher copyWith({  TeachingHour? teachingHour,
  String? ratings,
  String? experience,
  num? rating,
  num? total,
  String? highflyBadge,
  String? id,
  String? name,
  String? email,
  num? number,
  String? role,
  String? mode,
  String? createdAt,
  num? v,
  String? otp,
  String? dateofBirth,
  String? panNumber,
  String? profilePicture,
}) => Teacher(  teachingHour: teachingHour ?? _teachingHour,
  ratings: ratings ?? _ratings,
  experience: experience ?? _experience,
  rating: rating ?? _rating,
  total: total ?? _total,
  highflyBadge: highflyBadge ?? _highflyBadge,
  id: id ?? _id,
  name: name ?? _name,
  email: email ?? _email,
  number: number ?? _number,
  role: role ?? _role,
  mode: mode ?? _mode,
  createdAt: createdAt ?? _createdAt,
  v: v ?? _v,
  otp: otp ?? _otp,
  dateofBirth: dateofBirth ?? _dateofBirth,
  panNumber: panNumber ?? _panNumber,
  profilePicture: profilePicture ?? _profilePicture,
);
  TeachingHour? get teachingHour => _teachingHour;
  String? get ratings => _ratings;
  String? get experience => _experience;
  num? get rating => _rating;
  num? get total => _total;
  String? get highflyBadge => _highflyBadge;
  String? get id => _id;
  String? get name => _name;
  String? get email => _email;
  num? get number => _number;
  String? get role => _role;
  String? get mode => _mode;
  String? get createdAt => _createdAt;
  num? get v => _v;
  String? get otp => _otp;
  String? get dateofBirth => _dateofBirth;
  String? get panNumber => _panNumber;
  String? get profilePicture => _profilePicture;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_teachingHour != null) {
      map['teachingHour'] = _teachingHour?.toJson();
    }
    map['ratings'] = _ratings;
    map['experience'] = _experience;
    map['rating'] = _rating;
    map['total'] = _total;
    map['highflyBadge'] = _highflyBadge;
    map['_id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    map['number'] = _number;
    map['role'] = _role;
    map['mode'] = _mode;
    map['createdAt'] = _createdAt;
    map['__v'] = _v;
    map['otp'] = _otp;
    map['dateofBirth'] = _dateofBirth;
    map['panNumber'] = _panNumber;
    map['profilePicture'] = _profilePicture;
    return map;
  }

}

/// total : "0"
/// month : "0"
/// beginner : "0"
/// intermediate : 0
/// advanced : "0"

class TeachingHour {
  TeachingHour({
      String? total, 
      String? month, 
      String? beginner, 
      num? intermediate, 
      String? advanced,}){
    _total = total;
    _month = month;
    _beginner = beginner;
    _intermediate = intermediate;
    _advanced = advanced;
}

  TeachingHour.fromJson(dynamic json) {
    _total = json['total'];
    _month = json['month'];
    _beginner = json['beginner'];
    _intermediate = json['intermediate'];
    _advanced = json['advanced'];
  }
  String? _total;
  String? _month;
  String? _beginner;
  num? _intermediate;
  String? _advanced;
TeachingHour copyWith({  String? total,
  String? month,
  String? beginner,
  num? intermediate,
  String? advanced,
}) => TeachingHour(  total: total ?? _total,
  month: month ?? _month,
  beginner: beginner ?? _beginner,
  intermediate: intermediate ?? _intermediate,
  advanced: advanced ?? _advanced,
);
  String? get total => _total;
  String? get month => _month;
  String? get beginner => _beginner;
  num? get intermediate => _intermediate;
  String? get advanced => _advanced;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = _total;
    map['month'] = _month;
    map['beginner'] = _beginner;
    map['intermediate'] = _intermediate;
    map['advanced'] = _advanced;
    return map;
  }

}

/// profilePicture : ""
/// gold : "0"
/// silver : "0"
/// bronze : "0"
/// teachingHours : 0
/// level : "0"
/// pincode : ""
/// dateOfBirth : null
/// _id : "648804ceaea1ee6a21dacad7"
/// number : 1941231230
/// email : ""
/// otp : null
/// password : "$2b$10$XTQKRoMoFOBNOmzbReBu..wovpXqBpiyKyWCy69.k.pbM0ilWtip6"
/// classCredited : 10
/// role : "user"
/// createdAt : "2023-06-13T05:55:26.288Z"
/// __v : 0
/// address : ""
/// alternateNumber : ""
/// city : ""
/// classFrequency : ""
/// classesAttended : 5
/// classesConsumed : 8
/// classesRemaining : 5
/// country : ""
/// coverLeft : "011"
/// gender : ""
/// instruments : ""
/// isVerified : false
/// modeOFClass : ""
/// name : ""
/// prefferedPaymentSchedule : ""
/// skillLevel : ""
/// state : ""
/// typeOfSession : ""
/// late : 4
/// approvedLeave : 2
/// address1 : ""
/// address2 : ""

class User {
  User({
      String? profilePicture, 
      String? gold, 
      String? silver, 
      String? bronze, 
      num? teachingHours, 
      String? level, 
      String? pincode, 
      dynamic dateOfBirth, 
      String? id, 
      num? number, 
      String? email, 
      dynamic otp, 
      String? password, 
      num? classCredited, 
      String? role, 
      String? createdAt, 
      num? v, 
      String? address, 
      String? alternateNumber, 
      String? city, 
      String? classFrequency, 
      num? classesAttended, 
      num? classesConsumed, 
      num? classesRemaining, 
      String? country, 
      String? coverLeft, 
      String? gender, 
      String? instruments, 
      bool? isVerified, 
      String? modeOFClass, 
      String? name, 
      String? prefferedPaymentSchedule, 
      String? skillLevel, 
      String? state, 
      String? typeOfSession, 
      num? late, 
      num? approvedLeave, 
      String? address1, 
      String? address2,}){
    _profilePicture = profilePicture;
    _gold = gold;
    _silver = silver;
    _bronze = bronze;
    _teachingHours = teachingHours;
    _level = level;
    _pincode = pincode;
    _dateOfBirth = dateOfBirth;
    _id = id;
    _number = number;
    _email = email;
    _otp = otp;
    _password = password;
    _classCredited = classCredited;
    _role = role;
    _createdAt = createdAt;
    _v = v;
    _address = address;
    _alternateNumber = alternateNumber;
    _city = city;
    _classFrequency = classFrequency;
    _classesAttended = classesAttended;
    _classesConsumed = classesConsumed;
    _classesRemaining = classesRemaining;
    _country = country;
    _coverLeft = coverLeft;
    _gender = gender;
    _instruments = instruments;
    _isVerified = isVerified;
    _modeOFClass = modeOFClass;
    _name = name;
    _prefferedPaymentSchedule = prefferedPaymentSchedule;
    _skillLevel = skillLevel;
    _state = state;
    _typeOfSession = typeOfSession;
    _late = late;
    _approvedLeave = approvedLeave;
    _address1 = address1;
    _address2 = address2;
}

  User.fromJson(dynamic json) {
    _profilePicture = json['profilePicture'];
    _gold = json['gold'];
    _silver = json['silver'];
    _bronze = json['bronze'];
    _teachingHours = json['teachingHours'];
    _level = json['level'];
    _pincode = json['pincode'];
    _dateOfBirth = json['dateOfBirth'];
    _id = json['_id'];
    _number = json['number'];
    _email = json['email'];
    _otp = json['otp'];
    _password = json['password'];
    _classCredited = json['classCredited'];
    _role = json['role'];
    _createdAt = json['createdAt'];
    _v = json['__v'];
    _address = json['address'];
    _alternateNumber = json['alternateNumber'];
    _city = json['city'];
    _classFrequency = json['classFrequency'];
    _classesAttended = json['classesAttended'];
    _classesConsumed = json['classesConsumed'];
    _classesRemaining = json['classesRemaining'];
    _country = json['country'];
    _coverLeft = json['coverLeft'];
    _gender = json['gender'];
    _instruments = json['instruments'];
    _isVerified = json['isVerified'];
    _modeOFClass = json['modeOFClass'];
    _name = json['name'];
    _prefferedPaymentSchedule = json['prefferedPaymentSchedule'];
    _skillLevel = json['skillLevel'];
    _state = json['state'];
    _typeOfSession = json['typeOfSession'];
    _late = json['late'];
    _approvedLeave = json['approvedLeave'];
    _address1 = json['address1'];
    _address2 = json['address2'];
  }
  String? _profilePicture;
  String? _gold;
  String? _silver;
  String? _bronze;
  num? _teachingHours;
  String? _level;
  String? _pincode;
  dynamic _dateOfBirth;
  String? _id;
  num? _number;
  String? _email;
  dynamic _otp;
  String? _password;
  num? _classCredited;
  String? _role;
  String? _createdAt;
  num? _v;
  String? _address;
  String? _alternateNumber;
  String? _city;
  String? _classFrequency;
  num? _classesAttended;
  num? _classesConsumed;
  num? _classesRemaining;
  String? _country;
  String? _coverLeft;
  String? _gender;
  String? _instruments;
  bool? _isVerified;
  String? _modeOFClass;
  String? _name;
  String? _prefferedPaymentSchedule;
  String? _skillLevel;
  String? _state;
  String? _typeOfSession;
  num? _late;
  num? _approvedLeave;
  String? _address1;
  String? _address2;
User copyWith({  String? profilePicture,
  String? gold,
  String? silver,
  String? bronze,
  num? teachingHours,
  String? level,
  String? pincode,
  dynamic dateOfBirth,
  String? id,
  num? number,
  String? email,
  dynamic otp,
  String? password,
  num? classCredited,
  String? role,
  String? createdAt,
  num? v,
  String? address,
  String? alternateNumber,
  String? city,
  String? classFrequency,
  num? classesAttended,
  num? classesConsumed,
  num? classesRemaining,
  String? country,
  String? coverLeft,
  String? gender,
  String? instruments,
  bool? isVerified,
  String? modeOFClass,
  String? name,
  String? prefferedPaymentSchedule,
  String? skillLevel,
  String? state,
  String? typeOfSession,
  num? late,
  num? approvedLeave,
  String? address1,
  String? address2,
}) => User(  profilePicture: profilePicture ?? _profilePicture,
  gold: gold ?? _gold,
  silver: silver ?? _silver,
  bronze: bronze ?? _bronze,
  teachingHours: teachingHours ?? _teachingHours,
  level: level ?? _level,
  pincode: pincode ?? _pincode,
  dateOfBirth: dateOfBirth ?? _dateOfBirth,
  id: id ?? _id,
  number: number ?? _number,
  email: email ?? _email,
  otp: otp ?? _otp,
  password: password ?? _password,
  classCredited: classCredited ?? _classCredited,
  role: role ?? _role,
  createdAt: createdAt ?? _createdAt,
  v: v ?? _v,
  address: address ?? _address,
  alternateNumber: alternateNumber ?? _alternateNumber,
  city: city ?? _city,
  classFrequency: classFrequency ?? _classFrequency,
  classesAttended: classesAttended ?? _classesAttended,
  classesConsumed: classesConsumed ?? _classesConsumed,
  classesRemaining: classesRemaining ?? _classesRemaining,
  country: country ?? _country,
  coverLeft: coverLeft ?? _coverLeft,
  gender: gender ?? _gender,
  instruments: instruments ?? _instruments,
  isVerified: isVerified ?? _isVerified,
  modeOFClass: modeOFClass ?? _modeOFClass,
  name: name ?? _name,
  prefferedPaymentSchedule: prefferedPaymentSchedule ?? _prefferedPaymentSchedule,
  skillLevel: skillLevel ?? _skillLevel,
  state: state ?? _state,
  typeOfSession: typeOfSession ?? _typeOfSession,
  late: late ?? _late,
  approvedLeave: approvedLeave ?? _approvedLeave,
  address1: address1 ?? _address1,
  address2: address2 ?? _address2,
);
  String? get profilePicture => _profilePicture;
  String? get gold => _gold;
  String? get silver => _silver;
  String? get bronze => _bronze;
  num? get teachingHours => _teachingHours;
  String? get level => _level;
  String? get pincode => _pincode;
  dynamic get dateOfBirth => _dateOfBirth;
  String? get id => _id;
  num? get number => _number;
  String? get email => _email;
  dynamic get otp => _otp;
  String? get password => _password;
  num? get classCredited => _classCredited;
  String? get role => _role;
  String? get createdAt => _createdAt;
  num? get v => _v;
  String? get address => _address;
  String? get alternateNumber => _alternateNumber;
  String? get city => _city;
  String? get classFrequency => _classFrequency;
  num? get classesAttended => _classesAttended;
  num? get classesConsumed => _classesConsumed;
  num? get classesRemaining => _classesRemaining;
  String? get country => _country;
  String? get coverLeft => _coverLeft;
  String? get gender => _gender;
  String? get instruments => _instruments;
  bool? get isVerified => _isVerified;
  String? get modeOFClass => _modeOFClass;
  String? get name => _name;
  String? get prefferedPaymentSchedule => _prefferedPaymentSchedule;
  String? get skillLevel => _skillLevel;
  String? get state => _state;
  String? get typeOfSession => _typeOfSession;
  num? get late => _late;
  num? get approvedLeave => _approvedLeave;
  String? get address1 => _address1;
  String? get address2 => _address2;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['profilePicture'] = _profilePicture;
    map['gold'] = _gold;
    map['silver'] = _silver;
    map['bronze'] = _bronze;
    map['teachingHours'] = _teachingHours;
    map['level'] = _level;
    map['pincode'] = _pincode;
    map['dateOfBirth'] = _dateOfBirth;
    map['_id'] = _id;
    map['number'] = _number;
    map['email'] = _email;
    map['otp'] = _otp;
    map['password'] = _password;
    map['classCredited'] = _classCredited;
    map['role'] = _role;
    map['createdAt'] = _createdAt;
    map['__v'] = _v;
    map['address'] = _address;
    map['alternateNumber'] = _alternateNumber;
    map['city'] = _city;
    map['classFrequency'] = _classFrequency;
    map['classesAttended'] = _classesAttended;
    map['classesConsumed'] = _classesConsumed;
    map['classesRemaining'] = _classesRemaining;
    map['country'] = _country;
    map['coverLeft'] = _coverLeft;
    map['gender'] = _gender;
    map['instruments'] = _instruments;
    map['isVerified'] = _isVerified;
    map['modeOFClass'] = _modeOFClass;
    map['name'] = _name;
    map['prefferedPaymentSchedule'] = _prefferedPaymentSchedule;
    map['skillLevel'] = _skillLevel;
    map['state'] = _state;
    map['typeOfSession'] = _typeOfSession;
    map['late'] = _late;
    map['approvedLeave'] = _approvedLeave;
    map['address1'] = _address1;
    map['address2'] = _address2;
    return map;
  }

}
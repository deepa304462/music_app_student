/// user : {"_id":"652d4f3d86df7a376f1e5680","isVerified":false,"profilePicture":"","name":"","email":"test1@gmail.com","password":"$2b$10$ozuUY2p8BTIEgRaHTlUc1u2PeB8hmtG9UvvTB5gYn9uvpanaQdafi","classCredited":12,"coverLeft":"0","classesAttended":0,"classesRemaining":12,"classesConsumed":0,"late":0,"approvedLeave":0,"gold":"0","silver":"0","bronze":"0","badges":[],"teachingHours":0,"level":"0","gender":"","alternateNumber":"","address1":"","address2":"","city":"","state":"","country":"","pincode":"","dateOfBirth":null,"instruments":"","typeOfSession":"","skillLevel":"","classFrequency":"","modeOFClass":"","prefferedPaymentSchedule":"","role":"user","createdAt":"2023-10-16T14:57:01.113Z","__v":0}
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1MmQ0ZjNkODZkZjdhMzc2ZjFlNTY4MCIsImlhdCI6MTY5NzQ2ODIzNn0.PdGElnq1oTDL1qj2IWRtML-k6sbCJBEPec48er1u9es"

class LoginWithEmailModel {
  LoginWithEmailModel({
      User? user, 
      String? token,}){
    _user = user;
    _token = token;
}

  LoginWithEmailModel.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _token = json['token'];
  }
  User? _user;
  String? _token;
LoginWithEmailModel copyWith({  User? user,
  String? token,
}) => LoginWithEmailModel(  user: user ?? _user,
  token: token ?? _token,
);
  User? get user => _user;
  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['token'] = _token;
    return map;
  }

}

/// _id : "652d4f3d86df7a376f1e5680"
/// isVerified : false
/// profilePicture : ""
/// name : ""
/// email : "test1@gmail.com"
/// password : "$2b$10$ozuUY2p8BTIEgRaHTlUc1u2PeB8hmtG9UvvTB5gYn9uvpanaQdafi"
/// classCredited : 12
/// coverLeft : "0"
/// classesAttended : 0
/// classesRemaining : 12
/// classesConsumed : 0
/// late : 0
/// approvedLeave : 0
/// gold : "0"
/// silver : "0"
/// bronze : "0"
/// badges : []
/// teachingHours : 0
/// level : "0"
/// gender : ""
/// alternateNumber : ""
/// address1 : ""
/// address2 : ""
/// city : ""
/// state : ""
/// country : ""
/// pincode : ""
/// dateOfBirth : null
/// instruments : ""
/// typeOfSession : ""
/// skillLevel : ""
/// classFrequency : ""
/// modeOFClass : ""
/// prefferedPaymentSchedule : ""
/// role : "user"
/// createdAt : "2023-10-16T14:57:01.113Z"
/// __v : 0

class User {
  User({
      String? id, 
      bool? isVerified, 
      String? profilePicture, 
      String? name, 
      String? email, 
      String? password, 
      num? classCredited, 
      String? coverLeft, 
      num? classesAttended, 
      num? classesRemaining, 
      num? classesConsumed, 
      num? late, 
      num? approvedLeave, 
      String? gold, 
      String? silver, 
      String? bronze, 
      List<dynamic>? badges, 
      num? teachingHours, 
      String? level, 
      String? gender, 
      String? alternateNumber, 
      String? address1, 
      String? address2, 
      String? city, 
      String? state, 
      String? country, 
      String? pincode, 
      dynamic dateOfBirth, 
      String? instruments, 
      String? typeOfSession, 
      String? skillLevel, 
      String? classFrequency, 
      String? modeOFClass, 
      String? prefferedPaymentSchedule, 
      String? role, 
      String? createdAt, 
      num? v,}){
    _id = id;
    _isVerified = isVerified;
    _profilePicture = profilePicture;
    _name = name;
    _email = email;
    _password = password;
    _classCredited = classCredited;
    _coverLeft = coverLeft;
    _classesAttended = classesAttended;
    _classesRemaining = classesRemaining;
    _classesConsumed = classesConsumed;
    _late = late;
    _approvedLeave = approvedLeave;
    _gold = gold;
    _silver = silver;
    _bronze = bronze;
    _badges = badges;
    _teachingHours = teachingHours;
    _level = level;
    _gender = gender;
    _alternateNumber = alternateNumber;
    _address1 = address1;
    _address2 = address2;
    _city = city;
    _state = state;
    _country = country;
    _pincode = pincode;
    _dateOfBirth = dateOfBirth;
    _instruments = instruments;
    _typeOfSession = typeOfSession;
    _skillLevel = skillLevel;
    _classFrequency = classFrequency;
    _modeOFClass = modeOFClass;
    _prefferedPaymentSchedule = prefferedPaymentSchedule;
    _role = role;
    _createdAt = createdAt;
    _v = v;
}

  User.fromJson(dynamic json) {
    _id = json['_id'];
    _isVerified = json['isVerified'];
    _profilePicture = json['profilePicture'];
    _name = json['name'];
    _email = json['email'];
    _password = json['password'];
    _classCredited = json['classCredited'];
    _coverLeft = json['coverLeft'];
    _classesAttended = json['classesAttended'];
    _classesRemaining = json['classesRemaining'];
    _classesConsumed = json['classesConsumed'];
    _late = json['late'];
    _approvedLeave = json['approvedLeave'];
    _gold = json['gold'];
    _silver = json['silver'];
    _bronze = json['bronze'];
    _teachingHours = json['teachingHours'];
    _level = json['level'];
    _gender = json['gender'];
    _alternateNumber = json['alternateNumber'];
    _address1 = json['address1'];
    _address2 = json['address2'];
    _city = json['city'];
    _state = json['state'];
    _country = json['country'];
    _pincode = json['pincode'];
    _dateOfBirth = json['dateOfBirth'];
    _instruments = json['instruments'];
    _typeOfSession = json['typeOfSession'];
    _skillLevel = json['skillLevel'];
    _classFrequency = json['classFrequency'];
    _modeOFClass = json['modeOFClass'];
    _prefferedPaymentSchedule = json['prefferedPaymentSchedule'];
    _role = json['role'];
    _createdAt = json['createdAt'];
    _v = json['__v'];
  }
  String? _id;
  bool? _isVerified;
  String? _profilePicture;
  String? _name;
  String? _email;
  String? _password;
  num? _classCredited;
  String? _coverLeft;
  num? _classesAttended;
  num? _classesRemaining;
  num? _classesConsumed;
  num? _late;
  num? _approvedLeave;
  String? _gold;
  String? _silver;
  String? _bronze;
  List<dynamic>? _badges;
  num? _teachingHours;
  String? _level;
  String? _gender;
  String? _alternateNumber;
  String? _address1;
  String? _address2;
  String? _city;
  String? _state;
  String? _country;
  String? _pincode;
  dynamic _dateOfBirth;
  String? _instruments;
  String? _typeOfSession;
  String? _skillLevel;
  String? _classFrequency;
  String? _modeOFClass;
  String? _prefferedPaymentSchedule;
  String? _role;
  String? _createdAt;
  num? _v;
User copyWith({  String? id,
  bool? isVerified,
  String? profilePicture,
  String? name,
  String? email,
  String? password,
  num? classCredited,
  String? coverLeft,
  num? classesAttended,
  num? classesRemaining,
  num? classesConsumed,
  num? late,
  num? approvedLeave,
  String? gold,
  String? silver,
  String? bronze,
  List<dynamic>? badges,
  num? teachingHours,
  String? level,
  String? gender,
  String? alternateNumber,
  String? address1,
  String? address2,
  String? city,
  String? state,
  String? country,
  String? pincode,
  dynamic dateOfBirth,
  String? instruments,
  String? typeOfSession,
  String? skillLevel,
  String? classFrequency,
  String? modeOFClass,
  String? prefferedPaymentSchedule,
  String? role,
  String? createdAt,
  num? v,
}) => User(  id: id ?? _id,
  isVerified: isVerified ?? _isVerified,
  profilePicture: profilePicture ?? _profilePicture,
  name: name ?? _name,
  email: email ?? _email,
  password: password ?? _password,
  classCredited: classCredited ?? _classCredited,
  coverLeft: coverLeft ?? _coverLeft,
  classesAttended: classesAttended ?? _classesAttended,
  classesRemaining: classesRemaining ?? _classesRemaining,
  classesConsumed: classesConsumed ?? _classesConsumed,
  late: late ?? _late,
  approvedLeave: approvedLeave ?? _approvedLeave,
  gold: gold ?? _gold,
  silver: silver ?? _silver,
  bronze: bronze ?? _bronze,
  badges: badges ?? _badges,
  teachingHours: teachingHours ?? _teachingHours,
  level: level ?? _level,
  gender: gender ?? _gender,
  alternateNumber: alternateNumber ?? _alternateNumber,
  address1: address1 ?? _address1,
  address2: address2 ?? _address2,
  city: city ?? _city,
  state: state ?? _state,
  country: country ?? _country,
  pincode: pincode ?? _pincode,
  dateOfBirth: dateOfBirth ?? _dateOfBirth,
  instruments: instruments ?? _instruments,
  typeOfSession: typeOfSession ?? _typeOfSession,
  skillLevel: skillLevel ?? _skillLevel,
  classFrequency: classFrequency ?? _classFrequency,
  modeOFClass: modeOFClass ?? _modeOFClass,
  prefferedPaymentSchedule: prefferedPaymentSchedule ?? _prefferedPaymentSchedule,
  role: role ?? _role,
  createdAt: createdAt ?? _createdAt,
  v: v ?? _v,
);
  String? get id => _id;
  bool? get isVerified => _isVerified;
  String? get profilePicture => _profilePicture;
  String? get name => _name;
  String? get email => _email;
  String? get password => _password;
  num? get classCredited => _classCredited;
  String? get coverLeft => _coverLeft;
  num? get classesAttended => _classesAttended;
  num? get classesRemaining => _classesRemaining;
  num? get classesConsumed => _classesConsumed;
  num? get late => _late;
  num? get approvedLeave => _approvedLeave;
  String? get gold => _gold;
  String? get silver => _silver;
  String? get bronze => _bronze;
  List<dynamic>? get badges => _badges;
  num? get teachingHours => _teachingHours;
  String? get level => _level;
  String? get gender => _gender;
  String? get alternateNumber => _alternateNumber;
  String? get address1 => _address1;
  String? get address2 => _address2;
  String? get city => _city;
  String? get state => _state;
  String? get country => _country;
  String? get pincode => _pincode;
  dynamic get dateOfBirth => _dateOfBirth;
  String? get instruments => _instruments;
  String? get typeOfSession => _typeOfSession;
  String? get skillLevel => _skillLevel;
  String? get classFrequency => _classFrequency;
  String? get modeOFClass => _modeOFClass;
  String? get prefferedPaymentSchedule => _prefferedPaymentSchedule;
  String? get role => _role;
  String? get createdAt => _createdAt;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['isVerified'] = _isVerified;
    map['profilePicture'] = _profilePicture;
    map['name'] = _name;
    map['email'] = _email;
    map['password'] = _password;
    map['classCredited'] = _classCredited;
    map['coverLeft'] = _coverLeft;
    map['classesAttended'] = _classesAttended;
    map['classesRemaining'] = _classesRemaining;
    map['classesConsumed'] = _classesConsumed;
    map['late'] = _late;
    map['approvedLeave'] = _approvedLeave;
    map['gold'] = _gold;
    map['silver'] = _silver;
    map['bronze'] = _bronze;
    if (_badges != null) {
      map['badges'] = _badges?.map((v) => v.toJson()).toList();
    }
    map['teachingHours'] = _teachingHours;
    map['level'] = _level;
    map['gender'] = _gender;
    map['alternateNumber'] = _alternateNumber;
    map['address1'] = _address1;
    map['address2'] = _address2;
    map['city'] = _city;
    map['state'] = _state;
    map['country'] = _country;
    map['pincode'] = _pincode;
    map['dateOfBirth'] = _dateOfBirth;
    map['instruments'] = _instruments;
    map['typeOfSession'] = _typeOfSession;
    map['skillLevel'] = _skillLevel;
    map['classFrequency'] = _classFrequency;
    map['modeOFClass'] = _modeOFClass;
    map['prefferedPaymentSchedule'] = _prefferedPaymentSchedule;
    map['role'] = _role;
    map['createdAt'] = _createdAt;
    map['__v'] = _v;
    return map;
  }

}
/// isVerified : false
/// classCredited : 12
/// coverLeft : "0"
/// classesAttended : 0
/// classesRemaining : 12
/// classesConsumed : 0
/// late : 0
/// approvedLeave : 0
/// badges : []
/// teachingHours : 0
/// gender : ""
/// _id : "6486cd1842df3afc349d3b39"
/// number : 6231231230
/// email : " student@gmail.com"
/// otp : "827908"
/// role : "user"
/// createdAt : "2023-06-12T07:45:28.843Z"
/// __v : 0
/// profilePicture : "https://res.cloudinary.com/dtijhcmaa/image/upload/v1692265453/images/image/gbt4tt0trgkatnybw7io.jpg"
/// name : "anwer new"
/// address1 : " noida"
/// address2 : "noida2"
/// alternateNumber : " 987456321"
/// city : " noida"
/// country : " india"
/// state : " up"
/// pincode : "1234"
/// dateOfBirth : "2000-01-01T00:00:00.000Z"
/// classFrequency : " Once a week"
/// instruments : " Guitar"
/// modeOFClass : " Online"
/// prefferedPaymentSchedule : " 12 sessions"
/// skillLevel : " Beginner"
/// typeOfSession : " Private Session"
/// bronze : "2"
/// gold : "5"
/// level : "Level 1,"
/// silver : "1"

class RegisterFormModel {
  RegisterFormModel({
      bool? isVerified, 
      num? classCredited, 
      String? coverLeft, 
      num? classesAttended, 
      num? classesRemaining, 
      num? classesConsumed, 
      num? late, 
      num? approvedLeave, 
      List<dynamic>? badges, 
      num? teachingHours, 
      String? gender, 
      String? id, 
      num? number, 
      String? email, 
      String? otp, 
      String? role, 
      String? createdAt, 
      num? v, 
      String? profilePicture, 
      String? name, 
      String? address1, 
      String? address2, 
      String? alternateNumber, 
      String? city, 
      String? country, 
      String? state, 
      String? pincode, 
      String? dateOfBirth, 
      String? classFrequency, 
      String? instruments, 
      String? modeOFClass, 
      String? prefferedPaymentSchedule, 
      String? skillLevel, 
      String? typeOfSession, 
      String? bronze, 
      String? gold, 
      String? level, 
      String? silver,}){
    _isVerified = isVerified;
    _classCredited = classCredited;
    _coverLeft = coverLeft;
    _classesAttended = classesAttended;
    _classesRemaining = classesRemaining;
    _classesConsumed = classesConsumed;
    _late = late;
    _approvedLeave = approvedLeave;
    _badges = badges;
    _teachingHours = teachingHours;
    _gender = gender;
    _id = id;
    _number = number;
    _email = email;
    _otp = otp;
    _role = role;
    _createdAt = createdAt;
    _v = v;
    _profilePicture = profilePicture;
    _name = name;
    _address1 = address1;
    _address2 = address2;
    _alternateNumber = alternateNumber;
    _city = city;
    _country = country;
    _state = state;
    _pincode = pincode;
    _dateOfBirth = dateOfBirth;
    _classFrequency = classFrequency;
    _instruments = instruments;
    _modeOFClass = modeOFClass;
    _prefferedPaymentSchedule = prefferedPaymentSchedule;
    _skillLevel = skillLevel;
    _typeOfSession = typeOfSession;
    _bronze = bronze;
    _gold = gold;
    _level = level;
    _silver = silver;
}

  RegisterFormModel.fromJson(dynamic json) {
    _isVerified = json['isVerified'];
    _classCredited = json['classCredited'];
    _coverLeft = json['coverLeft'];
    _classesAttended = json['classesAttended'];
    _classesRemaining = json['classesRemaining'];
    _classesConsumed = json['classesConsumed'];
    _late = json['late'];
    _approvedLeave = json['approvedLeave'];
    _teachingHours = json['teachingHours'];
    _gender = json['gender'];
    _id = json['_id'];
    _number = json['number'];
    _email = json['email'];
    _otp = json['otp'];
    _role = json['role'];
    _createdAt = json['createdAt'];
    _v = json['__v'];
    _profilePicture = json['profilePicture'];
    _name = json['name'];
    _address1 = json['address1'];
    _address2 = json['address2'];
    _alternateNumber = json['alternateNumber'];
    _city = json['city'];
    _country = json['country'];
    _state = json['state'];
    _pincode = json['pincode'];
    _dateOfBirth = json['dateOfBirth'];
    _classFrequency = json['classFrequency'];
    _instruments = json['instruments'];
    _modeOFClass = json['modeOFClass'];
    _prefferedPaymentSchedule = json['prefferedPaymentSchedule'];
    _skillLevel = json['skillLevel'];
    _typeOfSession = json['typeOfSession'];
    _bronze = json['bronze'];
    _gold = json['gold'];
    _level = json['level'];
    _silver = json['silver'];
  }
  bool? _isVerified;
  num? _classCredited;
  String? _coverLeft;
  num? _classesAttended;
  num? _classesRemaining;
  num? _classesConsumed;
  num? _late;
  num? _approvedLeave;
  List<dynamic>? _badges;
  num? _teachingHours;
  String? _gender;
  String? _id;
  num? _number;
  String? _email;
  String? _otp;
  String? _role;
  String? _createdAt;
  num? _v;
  String? _profilePicture;
  String? _name;
  String? _address1;
  String? _address2;
  String? _alternateNumber;
  String? _city;
  String? _country;
  String? _state;
  String? _pincode;
  String? _dateOfBirth;
  String? _classFrequency;
  String? _instruments;
  String? _modeOFClass;
  String? _prefferedPaymentSchedule;
  String? _skillLevel;
  String? _typeOfSession;
  String? _bronze;
  String? _gold;
  String? _level;
  String? _silver;
RegisterFormModel copyWith({  bool? isVerified,
  num? classCredited,
  String? coverLeft,
  num? classesAttended,
  num? classesRemaining,
  num? classesConsumed,
  num? late,
  num? approvedLeave,
  List<dynamic>? badges,
  num? teachingHours,
  String? gender,
  String? id,
  num? number,
  String? email,
  String? otp,
  String? role,
  String? createdAt,
  num? v,
  String? profilePicture,
  String? name,
  String? address1,
  String? address2,
  String? alternateNumber,
  String? city,
  String? country,
  String? state,
  String? pincode,
  String? dateOfBirth,
  String? classFrequency,
  String? instruments,
  String? modeOFClass,
  String? prefferedPaymentSchedule,
  String? skillLevel,
  String? typeOfSession,
  String? bronze,
  String? gold,
  String? level,
  String? silver,
}) => RegisterFormModel(  isVerified: isVerified ?? _isVerified,
  classCredited: classCredited ?? _classCredited,
  coverLeft: coverLeft ?? _coverLeft,
  classesAttended: classesAttended ?? _classesAttended,
  classesRemaining: classesRemaining ?? _classesRemaining,
  classesConsumed: classesConsumed ?? _classesConsumed,
  late: late ?? _late,
  approvedLeave: approvedLeave ?? _approvedLeave,
  badges: badges ?? _badges,
  teachingHours: teachingHours ?? _teachingHours,
  gender: gender ?? _gender,
  id: id ?? _id,
  number: number ?? _number,
  email: email ?? _email,
  otp: otp ?? _otp,
  role: role ?? _role,
  createdAt: createdAt ?? _createdAt,
  v: v ?? _v,
  profilePicture: profilePicture ?? _profilePicture,
  name: name ?? _name,
  address1: address1 ?? _address1,
  address2: address2 ?? _address2,
  alternateNumber: alternateNumber ?? _alternateNumber,
  city: city ?? _city,
  country: country ?? _country,
  state: state ?? _state,
  pincode: pincode ?? _pincode,
  dateOfBirth: dateOfBirth ?? _dateOfBirth,
  classFrequency: classFrequency ?? _classFrequency,
  instruments: instruments ?? _instruments,
  modeOFClass: modeOFClass ?? _modeOFClass,
  prefferedPaymentSchedule: prefferedPaymentSchedule ?? _prefferedPaymentSchedule,
  skillLevel: skillLevel ?? _skillLevel,
  typeOfSession: typeOfSession ?? _typeOfSession,
  bronze: bronze ?? _bronze,
  gold: gold ?? _gold,
  level: level ?? _level,
  silver: silver ?? _silver,
);
  bool? get isVerified => _isVerified;
  num? get classCredited => _classCredited;
  String? get coverLeft => _coverLeft;
  num? get classesAttended => _classesAttended;
  num? get classesRemaining => _classesRemaining;
  num? get classesConsumed => _classesConsumed;
  num? get late => _late;
  num? get approvedLeave => _approvedLeave;
  List<dynamic>? get badges => _badges;
  num? get teachingHours => _teachingHours;
  String? get gender => _gender;
  String? get id => _id;
  num? get number => _number;
  String? get email => _email;
  String? get otp => _otp;
  String? get role => _role;
  String? get createdAt => _createdAt;
  num? get v => _v;
  String? get profilePicture => _profilePicture;
  String? get name => _name;
  String? get address1 => _address1;
  String? get address2 => _address2;
  String? get alternateNumber => _alternateNumber;
  String? get city => _city;
  String? get country => _country;
  String? get state => _state;
  String? get pincode => _pincode;
  String? get dateOfBirth => _dateOfBirth;
  String? get classFrequency => _classFrequency;
  String? get instruments => _instruments;
  String? get modeOFClass => _modeOFClass;
  String? get prefferedPaymentSchedule => _prefferedPaymentSchedule;
  String? get skillLevel => _skillLevel;
  String? get typeOfSession => _typeOfSession;
  String? get bronze => _bronze;
  String? get gold => _gold;
  String? get level => _level;
  String? get silver => _silver;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isVerified'] = _isVerified;
    map['classCredited'] = _classCredited;
    map['coverLeft'] = _coverLeft;
    map['classesAttended'] = _classesAttended;
    map['classesRemaining'] = _classesRemaining;
    map['classesConsumed'] = _classesConsumed;
    map['late'] = _late;
    map['approvedLeave'] = _approvedLeave;
    if (_badges != null) {
      map['badges'] = _badges?.map((v) => v.toJson()).toList();
    }
    map['teachingHours'] = _teachingHours;
    map['gender'] = _gender;
    map['_id'] = _id;
    map['number'] = _number;
    map['email'] = _email;
    map['otp'] = _otp;
    map['role'] = _role;
    map['createdAt'] = _createdAt;
    map['__v'] = _v;
    map['profilePicture'] = _profilePicture;
    map['name'] = _name;
    map['address1'] = _address1;
    map['address2'] = _address2;
    map['alternateNumber'] = _alternateNumber;
    map['city'] = _city;
    map['country'] = _country;
    map['state'] = _state;
    map['pincode'] = _pincode;
    map['dateOfBirth'] = _dateOfBirth;
    map['classFrequency'] = _classFrequency;
    map['instruments'] = _instruments;
    map['modeOFClass'] = _modeOFClass;
    map['prefferedPaymentSchedule'] = _prefferedPaymentSchedule;
    map['skillLevel'] = _skillLevel;
    map['typeOfSession'] = _typeOfSession;
    map['bronze'] = _bronze;
    map['gold'] = _gold;
    map['level'] = _level;
    map['silver'] = _silver;
    return map;
  }

}
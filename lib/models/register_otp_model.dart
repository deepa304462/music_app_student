/// message : "OTP verification successful."
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1MWZmZThiOGFkNjg4N2Q5ODY0NjViZiIsImlhdCI6MTY5NjU5NTYyNH0.lAhZoXqt4zJQLR5ocfz2aPNw7ffsFI0JARjRa5hZLs8"

class RegisterOtpModel {
  RegisterOtpModel({
      String? message, 
      String? token,}){
    _message = message;
    _token = token;
}

  RegisterOtpModel.fromJson(dynamic json) {
    _message = json['message'];
    _token = json['token'];
  }
  String? _message;
  String? _token;
RegisterOtpModel copyWith({  String? message,
  String? token,
}) => RegisterOtpModel(  message: message ?? _message,
  token: token ?? _token,
);
  String? get message => _message;
  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    map['token'] = _token;
    return map;
  }

}
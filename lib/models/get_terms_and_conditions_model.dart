/// terms : [{"_id":"6479967108b326279f602025","terms":"This is student terms & conditions","__v":0},{"_id":"647996eb08b326279f602027","terms":"This is student terms & conditions only","__v":0},{"_id":"652a4d57430dc156d75e1050","terms":"This is student terms & conditions only given","__v":0}]

class GetTermsAndConditionsModel {
  GetTermsAndConditionsModel({
      List<Terms>? terms,}){
    _terms = terms;
}

  GetTermsAndConditionsModel.fromJson(dynamic json) {
    if (json['terms'] != null) {
      _terms = [];
      json['terms'].forEach((v) {
        _terms?.add(Terms.fromJson(v));
      });
    }
  }
  List<Terms>? _terms;
GetTermsAndConditionsModel copyWith({  List<Terms>? terms,
}) => GetTermsAndConditionsModel(  terms: terms ?? _terms,
);
  List<Terms>? get terms => _terms;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_terms != null) {
      map['terms'] = _terms?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// _id : "6479967108b326279f602025"
/// terms : "This is student terms & conditions"
/// __v : 0

class Terms {
  Terms({
      String? id, 
      String? terms, 
      num? v,}){
    _id = id;
    _terms = terms;
    _v = v;
}

  Terms.fromJson(dynamic json) {
    _id = json['_id'];
    _terms = json['terms'];
    _v = json['__v'];
  }
  String? _id;
  String? _terms;
  num? _v;
Terms copyWith({  String? id,
  String? terms,
  num? v,
}) => Terms(  id: id ?? _id,
  terms: terms ?? _terms,
  v: v ?? _v,
);
  String? get id => _id;
  String? get terms => _terms;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['terms'] = _terms;
    map['__v'] = _v;
    return map;
  }

}
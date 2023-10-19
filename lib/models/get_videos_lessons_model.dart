/// success : true
/// studies : [{"thumbnail":"","_id":"64be1c178466517679f6f861","name":"study material","video":"https://res.cloudinary.com/dtijhcmaa/video/upload/v1690180624/videos/j0ymmyvlsyzhwbvrigjf.mp4","image":"https://res.cloudinary.com/dtijhcmaa/image/upload/v1692863894/images/image/dip9czpzbdephvncdjzk.jpg","__v":0}]

class GetVideosLessonsModel {
  GetVideosLessonsModel({
      bool? success, 
      List<Studies>? studies,}){
    _success = success;
    _studies = studies;
}

  GetVideosLessonsModel.fromJson(dynamic json) {
    _success = json['success'];
    if (json['studies'] != null) {
      _studies = [];
      json['studies'].forEach((v) {
        _studies?.add(Studies.fromJson(v));
      });
    }
  }
  bool? _success;
  List<Studies>? _studies;
GetVideosLessonsModel copyWith({  bool? success,
  List<Studies>? studies,
}) => GetVideosLessonsModel(  success: success ?? _success,
  studies: studies ?? _studies,
);
  bool? get success => _success;
  List<Studies>? get studies => _studies;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    if (_studies != null) {
      map['studies'] = _studies?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// thumbnail : ""
/// _id : "64be1c178466517679f6f861"
/// name : "study material"
/// video : "https://res.cloudinary.com/dtijhcmaa/video/upload/v1690180624/videos/j0ymmyvlsyzhwbvrigjf.mp4"
/// image : "https://res.cloudinary.com/dtijhcmaa/image/upload/v1692863894/images/image/dip9czpzbdephvncdjzk.jpg"
/// __v : 0

class Studies {
  Studies({
      String? thumbnail, 
      String? id, 
      String? name, 
      String? video, 
      String? image, 
      num? v,}){
    _thumbnail = thumbnail;
    _id = id;
    _name = name;
    _video = video;
    _image = image;
    _v = v;
}

  Studies.fromJson(dynamic json) {
    _thumbnail = json['thumbnail'];
    _id = json['_id'];
    _name = json['name'];
    _video = json['video'];
    _image = json['image'];
    _v = json['__v'];
  }
  String? _thumbnail;
  String? _id;
  String? _name;
  String? _video;
  String? _image;
  num? _v;
Studies copyWith({  String? thumbnail,
  String? id,
  String? name,
  String? video,
  String? image,
  num? v,
}) => Studies(  thumbnail: thumbnail ?? _thumbnail,
  id: id ?? _id,
  name: name ?? _name,
  video: video ?? _video,
  image: image ?? _image,
  v: v ?? _v,
);
  String? get thumbnail => _thumbnail;
  String? get id => _id;
  String? get name => _name;
  String? get video => _video;
  String? get image => _image;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['thumbnail'] = _thumbnail;
    map['_id'] = _id;
    map['name'] = _name;
    map['video'] = _video;
    map['image'] = _image;
    map['__v'] = _v;
    return map;
  }

}
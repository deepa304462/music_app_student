import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:music_app_student/core/utils/constants/constants.dart';
import 'package:music_app_student/core/utils/utils.dart';
import 'package:music_app_student/data/app_excaptions.dart';
import 'package:music_app_student/data/network/base_api_services.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;

    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 30));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responseJson;

    try {
      String token = await Utils.getFromSharedPreference(Constants.accessToken);
      Response response = await post(Uri.parse(url),
              body: data, headers: {"Authorization": 'Bearer $token'})
          .timeout(const Duration(seconds: 30));
      print(response.body);
      responseJson = jsonDecode(response.body);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }

  Future getPutApiResponse(
    String url,
    dynamic data,
  ) async {
    dynamic responseJson;

    try {
      Response response = await put(
        Uri.parse(url),
        body: data,
      ).timeout(const Duration(seconds: 30));
      responseJson = jsonDecode(response.body);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }

  @override
  Future getPutWithFileApiResponse(String url, data, File? pic) async {
    dynamic responseJson;

    try {
      String token = await Utils.getFromSharedPreference(Constants.accessToken);
      var request = http.MultipartRequest('PUT', Uri.parse(url));
      request.headers['Authorization'] = 'Bearer $token';
      // Add the files to the request

      if (pic != null) {
        request.files.add(http.MultipartFile(
          'profilePicture',
          pic.readAsBytes().asStream(),
          pic.lengthSync(),
          filename: 'pic.jpg',
        ));
      }
      // Add other data fields to the request
      data.forEach((key, value) {
        request.fields[key] = value.toString();
      });

      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);
      responseJson = jsonDecode(response.body);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }

    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 404:
        throw UnauthorisedException(response.body.toString());
      case 401:
        throw UnauthorisedException(response.body.toString());
      default:
        throw FetchDataException(
            'Error accord while communicating with server' +
                'with status code' +
                response.statusCode.toString());
    }
  }

  @override
  Future rescheduleClass(String url, Map<String, dynamic> data) async {
    dynamic responseJson;

    try {
      String token = await Utils.getFromSharedPreference(Constants.accessToken);
      Response response = await post(Uri.parse(url),
          body: jsonEncode(data),
          headers: {
            "Authorization": 'Bearer $token',
            'Content-Type': 'application/json'
          }).timeout(const Duration(seconds: 30));
      responseJson = jsonDecode(response.body);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }
  @override
  Future applyLeave(String url, Map<String, dynamic> data) async {
    dynamic responseJson;

    try {
      String token = await Utils.getFromSharedPreference(Constants.accessToken);
      Response response = await post(Uri.parse(url),
          body: jsonEncode(data),
          headers: {
            "Authorization": 'Bearer $token',
            'Content-Type': 'application/json'
          }).timeout(const Duration(seconds: 30));
      print("response.body");
      print(response.statusCode);
      responseJson = jsonDecode(response.body);

    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }

  @override
  Future examRegister(String url, Map<String, dynamic> data) async {
    dynamic responseJson;

    try {
      String token = await Utils.getFromSharedPreference(Constants.accessToken);
      Response response = await post(Uri.parse(url),
          body: jsonEncode(data),
          headers: {
            "Authorization": 'Bearer $token',
            'Content-Type': 'application/json'
          }).timeout(const Duration(seconds: 30));
      print("response.body");
      print(response.statusCode);
      responseJson = jsonDecode(response.body);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }
  @override
  Future applyCoverClass(String url, Map<String, dynamic> data) async {
    dynamic responseJson;

    try {
      String token = await Utils.getFromSharedPreference(Constants.accessToken);
      Response response = await post(Uri.parse(url),
          body: jsonEncode(data),
          headers: {
            "Authorization": 'Bearer $token',
            'Content-Type': 'application/json'
          }).timeout(const Duration(seconds: 30));
      print("response.body");
      print(response.statusCode);
      responseJson = jsonDecode(response.body);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }

  @override
  Future getTimeSlotTeacher(String url) async {
    dynamic responseJson;

    try {
      String token = await Utils.getFromSharedPreference(Constants.accessToken);
      final response =
      await http.get(Uri.parse(url),
        headers: {
          "Authorization": 'Bearer $token',
        }
      ).timeout(const Duration(seconds: 30));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }

  @override
  Future getTeacherDays(String url) async {
    dynamic responseJson;

    try {
      String token = await Utils.getFromSharedPreference(Constants.accessToken);
      final response =
      await http.get(Uri.parse(url),
          headers: {
            "Authorization": 'Bearer $token',
          }
      ).timeout(const Duration(seconds: 30));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }
  @override
  Future getVideosLessons(String url) async {
    dynamic responseJson;

    try {
      String token = await Utils.getFromSharedPreference(Constants.accessToken);
      final response =
      await http.get(Uri.parse(url, ),

          headers: {
            "Authorization": 'Bearer $token',
          }
      ).timeout(const Duration(seconds: 30));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }

  @override
  Future getMyCourses(String url) async {
    dynamic responseJson;

    try {
      String token = await Utils.getFromSharedPreference(Constants.accessToken);
      final response =
      await http.get(Uri.parse(url, ),

          headers: {
            "Authorization": 'Bearer $token',
          }
      ).timeout(const Duration(seconds: 30));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }

  @override
  Future signUpApi(String url, Map<String, dynamic> data) async {
    dynamic responseJson;

    try {
     // String token = await Utils.getFromSharedPreference(Constants.accessToken);
      Response response = await post(Uri.parse(url),
          body: jsonEncode(data),
          headers: {
            'Content-Type': 'application/json'
          }).timeout(const Duration(seconds: 30));
      print("response.body");
      print(response.statusCode);
      responseJson = jsonDecode(response.body);

    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }
  @override
  Future login(String url, Map<String, dynamic> data) async {
    dynamic responseJson;

    try {
      // String token = await Utils.getFromSharedPreference(Constants.accessToken);
      Response response = await post(Uri.parse(url),
          body: jsonEncode(data),
          headers: {
            'Content-Type': 'application/json'
          }).timeout(const Duration(seconds: 30));
      print("response.body");
      print(response.statusCode);
      responseJson = jsonDecode(response.body);

    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }

  @override
  Future signOtpApi(String url, dynamic data) async {
    dynamic responseJson;

    try {
      //String token = await Utils.getFromSharedPreference(Constants.accessToken);
      Response response = await post(Uri.parse(url),
          body: data, )
          .timeout(const Duration(seconds: 30));
      print(response.body);
      responseJson = jsonDecode(response.body);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }

  @override
  Future logInApi(String url, Map<String, dynamic> data) async {
    dynamic responseJson;

    try {
      // String token = await Utils.getFromSharedPreference(Constants.accessToken);
      Response response = await post(Uri.parse(url),
          body: jsonEncode(data),
          headers: {
            'Content-Type': 'application/json'
          }).timeout(const Duration(seconds: 30));
      print("response.body");
      print(response.statusCode);
      responseJson = jsonDecode(response.body);

    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }

  @override
  Future registerEmail(String url, Map<String, dynamic> data) async {
    dynamic responseJson;

    try {
      String token = await Utils.getFromSharedPreference(Constants.accessToken);
      Response response = await post(Uri.parse(url),
          body: jsonEncode(data),
          headers: {
            "Authorization": 'Bearer $token',
            'Content-Type': 'application/json'
          }).timeout(const Duration(seconds: 30));
      print("response.body");
      print(response.statusCode);
      responseJson = jsonDecode(response.body);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }

}



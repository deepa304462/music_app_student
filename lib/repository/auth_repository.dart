

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:music_app_student/data/network/base_api_services.dart';
import 'package:music_app_student/data/network/network_api_services.dart';

import '../core/utils/constants/constants.dart';
import '../core/utils/utils.dart';
import '../res/components/app_url.dart';

class AuthRepository{
  BaseApiServices _apiServices = NetworkApiServices();


  Future<dynamic>signUpApi(dynamic data)async{

    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.registerUrl,data);
      return response;
    }catch(e){
      throw e;;
    }

  }

  Future<dynamic>signUpOtpApi(dynamic data)async{

    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.registerOtpUrl,data);
      return response;
    }catch(e){
      throw e;;
    }

  }

  Future<dynamic>logInApi(dynamic data)async{

    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.loginUrl,data);
      return response;
    }catch(e){
      throw e;;
    }

  }

  Future<dynamic> updateRegisterForm(
      dynamic data,
      File? pic,
      ) async {
    try {
      String userId = await Utils.getFromSharedPreference(Constants.userId);
      debugPrint(AppUrl.registerFormUrl + userId);
      dynamic response = await _apiServices.getPutApiResponse(
          AppUrl.registerFormUrl + userId,
          data,
          pic!,);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> allServiceApi() async {
    try {
      dynamic response =
      await _apiServices.getGetApiResponse(AppUrl.instrumentUrl);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> allCoursesApi() async {
    try {
      String userId = await Utils.getFromSharedPreference(Constants.userId);
      dynamic response =
      await _apiServices.getGetApiResponse(AppUrl.allCoursesUrl+userId);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> myProfileApi() async {
    try {
      String userId = await Utils.getFromSharedPreference(Constants.userId);
      dynamic response =
      await _apiServices.getGetApiResponse(AppUrl.myProfileUrl+userId);
      return response;
    } catch (e) {
      throw e;
    }
  }

}
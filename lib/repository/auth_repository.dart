

import 'package:music_app_student/data/network/base_api_services.dart';
import 'package:music_app_student/data/network/network_api_services.dart';

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

}
import 'dart:io';

abstract class BaseApiServices {
  Future<dynamic> getGetApiResponse(String url);

  Future<dynamic> getPostApiResponse(String url, dynamic data);

  Future<dynamic> getPutApiResponse(String url, dynamic data);

  Future<dynamic> getPutWithFileApiResponse(
      String url, dynamic data, File? pic);

  Future<dynamic> rescheduleClass(String url, Map<String, dynamic> data);

  Future<dynamic> applyLeave(String url, Map<String, dynamic> data);

  Future<dynamic> examRegister(String url, Map<String, dynamic> data);
}

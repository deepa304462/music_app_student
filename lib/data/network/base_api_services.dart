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

  Future<dynamic> applyCoverClass(String url, Map<String, dynamic> data);

  Future<dynamic> getTimeSlotTeacher(String url);

  Future<dynamic> getTeacherDays(String url);

  Future<dynamic> getVideosLessons(String url);

  Future<dynamic> getMyCourses(String url);

  Future<dynamic> signUpApi(String url, Map<String, dynamic> data);

  Future<dynamic> login(String url, Map<String, dynamic> data);

  Future<dynamic> signOtpApi(String url, Map<String, dynamic> data);

  Future<dynamic> registerEmail(String url, Map<String, dynamic> data);




}

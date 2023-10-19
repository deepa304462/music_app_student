class AppUrl{
  static var baseUrl = 'https://music-app-seven-gamma.vercel.app/';

  static var registerUrl = '${baseUrl}api/user/signup';

  static var registerOtpUrl ='${baseUrl}api/user/signup/verify';

  static var loginUrl = '${baseUrl}api/user/login';

  static var registerFormUrl = "${baseUrl}api/user/signup/verify/";

  static var instrumentUrl = "${baseUrl}api/v1/subject/all";

  static var allCoursesUrl = "${baseUrl}api/user/classes/";

  static var myProfileUrl ="${baseUrl}api/user/";

  static var getAllTeacher = "${baseUrl}api/v1/teacher/all";

  static var termsUrl = "${baseUrl}api/v1/terms";

  static var examRegistrationUrl = "${baseUrl}api/v1/examRegistration";

  static var emailRegisterUrl = "${baseUrl}api/user/email/register";

  static var resendOtpUrl = "${baseUrl}api/user/resend/otp";

  static var getTimeSlotUrl = "${baseUrl}api/v1/teacher/time/";

  static var getDaysUrl =  "${baseUrl}api/v1/teacher/days/";

  static var logInWithEmailUrl = "${baseUrl}api/user/email/login";

  static var rescheduleClassUrl = "${baseUrl}api/v1/reschedule/student";

  static var applyLeaveUrl = "${baseUrl}api/v1/leave/student";

  static var applyCoverClass = "${baseUrl}api/v1/cover/student";

  static var videoLessonsUrl = "${baseUrl}api/v1/study/get/image";

  static var myCoursesUrl = "${baseUrl}api/user/classes/";

}
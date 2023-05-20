import 'package:get/get.dart';
import 'package:music_app_student/core/config/routes/app_routes.dart';
import 'package:music_app_student/core/presentation/pages/auth/login/login_page.dart';
import 'package:music_app_student/core/presentation/pages/auth/login/login_template_page.dart';
import 'package:music_app_student/core/presentation/pages/auth/login_option/login_option_page.dart';
import 'package:music_app_student/core/presentation/pages/auth/signup/create_account_page.dart';
import 'package:music_app_student/core/presentation/pages/download/download_page.dart';
import 'package:music_app_student/core/presentation/pages/ebook/ebook_page.dart';
import 'package:music_app_student/core/presentation/pages/edit_profile/edit_profile_page.dart';
import 'package:music_app_student/core/presentation/pages/edit_profile/edit_profile_pen_page.dart';
import 'package:music_app_student/core/presentation/pages/edit_profile/edit_profilee_page.dart';
import 'package:music_app_student/core/presentation/pages/exam/change_course_exam_registration_page.dart';
import 'package:music_app_student/core/presentation/pages/exam/exam_registration_page.dart';
import 'package:music_app_student/core/presentation/pages/feedback/previous_feedback_page.dart';
import 'package:music_app_student/core/presentation/pages/intro/intro_page.dart';
import 'package:music_app_student/core/presentation/pages/join/join_class_page.dart';
import 'package:music_app_student/core/presentation/pages/live/live_streaming_page.dart';
import 'package:music_app_student/core/presentation/pages/marksheets/my_marksheet_page.dart';
import 'package:music_app_student/core/presentation/pages/my_guitar/my_guitar_classes_detail_page.dart';
import 'package:music_app_student/core/presentation/pages/my_guitar/my_guitar_classes_page.dart';
import 'package:music_app_student/core/presentation/pages/notification/fragment/notification_page.dart';
import 'package:music_app_student/core/presentation/pages/notification/fragment/payment_page.dart';
import 'package:music_app_student/core/presentation/pages/notification/notification_template.dart';
import 'package:music_app_student/core/presentation/pages/parent_profile/parent_profile_page.dart';
import 'package:music_app_student/core/presentation/pages/policy/terms_condition_page.dart';
import 'package:music_app_student/core/presentation/pages/profile/profile_page.dart';
import 'package:music_app_student/core/presentation/pages/schedule/schedule_classes_page.dart';
import 'package:music_app_student/core/presentation/pages/splash/splash_page.dart';
import 'package:music_app_student/core/presentation/pages/teacher_profile_page.dart';

class AppPage {
  static final List<GetPage> page = [
    GetPage(
      name: AppRoutes.splashPage,
      page: () => SplashPage(),
    ),
    GetPage(
      name: AppRoutes.loginOptionPage,
      page: () => LoginOptionPage(),
    ),
    GetPage(
      name: AppRoutes.introPage,
      page: () => IntroPage(),
    ),
    GetPage(
      name: AppRoutes.termsConditionPage,
      page: () => TermsConditionPage(),
    ),
    GetPage(
      name: AppRoutes.loginTemplatePage,
      page: () => const LoginTamplatePage(),
    ),
    GetPage(
      name: AppRoutes.loginPage,
      page: () => LoginPage(),
    ),
    GetPage(
      name: AppRoutes.createAccountPage,
      page: () => CreateAccountPage(),
    ),
    GetPage(
      name: AppRoutes.profilePage,
      page: () => ProfilePage(),
    ),
    GetPage(
      name: AppRoutes.parentProfilePage,
      page: () => ParentProfilePage(),
    ),
    GetPage(
      name: AppRoutes.examRegistrationPage,
      page: () => ExamRegistrationPage(),
    ),
    GetPage(
      name: AppRoutes.eBookPage,
      page: () => EBookPage(),
    ),
    GetPage(
      name: AppRoutes.editProfilePage,
      page: () => EditProfilePage(),
    ),
    GetPage(
      name: AppRoutes.editProfilePenPage,
      page: () => EditProfilePenPage(),
    ),
    GetPage(
      name: AppRoutes.editProfileePage,
      page: () => EditProfileePage(),
    ),
    GetPage(
      name: AppRoutes.changeCourseExamRegistrationPage,
      page: () => ChangeCourseExamRegistrationPage(),
    ),
    GetPage(
      name: AppRoutes.joinClassPage,
      page: () => JoinClassPage(),
    ),
    GetPage(
      name: AppRoutes.myMarksheetPage,
      page: () => MyMarksheetPage(),
    ),
    GetPage(
      name: AppRoutes.downloadPage,
      page: () => DownloadPage(),
    ),
    GetPage(
      name: AppRoutes.liveStreamingPage,
      page: () => LiveStreamingPage(),
    ),
    GetPage(
      name: AppRoutes.notificationTemplate,
      page: () => NotificationTemplate(),
    ),
    GetPage(
      name: AppRoutes.notificationPage,
      page: () => NotificationPage(),
    ),
    GetPage(
      name: AppRoutes.paymentPage,
      page: () => PaymentPage(),
    ),
    GetPage(
      name: AppRoutes.previousFeedBackPage,
      page: () => PreviousFeedbackPage(),
    ),
    GetPage(
      name: AppRoutes.scheduleClassesPage,
      page: () => ScheduleClassesPage(),
    ),
    GetPage(
      name: AppRoutes.myGuitarClassDetailPage,
      page: () => MyGuitarClassesDetailPage(),
    ),
    GetPage(
      name: AppRoutes.myGuitarClassPage,
      page: () => MyGuitarClassesPage(),
    ),
    GetPage(
      name: AppRoutes.teacherProfilePage,
      page: () => TeacherProfilePage(),
    ),
  ];
}

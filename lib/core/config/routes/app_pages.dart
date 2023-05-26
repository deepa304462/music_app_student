import 'package:get/get.dart';
import 'package:music_app_student/core/config/routes/app_routes.dart';
import 'package:music_app_student/core/nav/new_bottom_navigation_bar.dart';
import 'package:music_app_student/core/presentation/pages/auth/login/login_page.dart';
import 'package:music_app_student/core/presentation/pages/auth/login/login_template_page.dart';
import 'package:music_app_student/core/presentation/pages/auth/login_option/login_option_page.dart';
import 'package:music_app_student/core/presentation/pages/auth/signup/create_account_page.dart';
import 'package:music_app_student/core/presentation/pages/chat/conversation_screen_ui.dart';
import 'package:music_app_student/core/presentation/pages/communication/communication_page.dart';
import 'package:music_app_student/core/presentation/pages/download/download_page.dart';
import 'package:music_app_student/core/presentation/pages/ebook/ebook_page.dart';
import 'package:music_app_student/core/presentation/pages/edit_profile/edit_profile_page.dart';
import 'package:music_app_student/core/presentation/pages/edit_profile/edit_profile_pen_page.dart';
import 'package:music_app_student/core/presentation/pages/edit_profile/edit_profilee_page.dart';
import 'package:music_app_student/core/presentation/pages/exam/change_course_exam_registration_page.dart';
import 'package:music_app_student/core/presentation/pages/exam/exam_registration_page.dart';
import 'package:music_app_student/core/presentation/pages/feedback/previous_feedback_page.dart';
import 'package:music_app_student/core/presentation/pages/home/home_page.dart';
import 'package:music_app_student/core/presentation/pages/intro/intro_page.dart';
import 'package:music_app_student/core/presentation/pages/join/join_class_page.dart';
import 'package:music_app_student/core/presentation/pages/live/live_streaming_page.dart';
import 'package:music_app_student/core/presentation/pages/marksheets/my_marksheet_page.dart';
import 'package:music_app_student/core/presentation/pages/my_guitar/my_guitar_classes_detail_page.dart';
import 'package:music_app_student/core/presentation/pages/my_guitar/my_guitar_classes_page.dart';
import 'package:music_app_student/core/presentation/pages/payment/exam_payment_page.dart';
import 'package:music_app_student/core/presentation/pages/payment/period_payment_page.dart';
import 'package:music_app_student/core/presentation/pages/progress/my_progress_page.dart';
import 'package:music_app_student/core/presentation/pages/ps_profile/parent_profile_page.dart';
import 'package:music_app_student/core/presentation/pages/ps_profile/student_hybrid_profile_page.dart';
import 'package:music_app_student/core/presentation/pages/ps_profile/student_online_profile_page.dart';
import 'package:music_app_student/core/presentation/pages/notification/fragment/notification_page.dart';
import 'package:music_app_student/core/presentation/pages/notification/fragment/payment_page.dart';
import 'package:music_app_student/core/presentation/pages/notification/notification_template.dart';
import 'package:music_app_student/core/presentation/pages/parent_register_profile/parent_register_profile_page.dart';
import 'package:music_app_student/core/presentation/pages/policy/terms_condition_page.dart';
import 'package:music_app_student/core/presentation/pages/register_profile/register_profile_page.dart';
import 'package:music_app_student/core/presentation/pages/schedule/schedule_classes_page.dart';
import 'package:music_app_student/core/presentation/pages/splash/splash_page.dart';
import 'package:music_app_student/core/presentation/pages/study_material/study_material_page.dart';
import 'package:music_app_student/core/presentation/pages/teacher_profile/teacher_profile_page.dart';
import 'package:music_app_student/core/presentation/pages/teacher_profile/teacher_with_exp_profile_page.dart';
import 'package:music_app_student/core/presentation/pages/videos/imp_videos_lesson_page.dart';
import 'package:music_app_student/core/presentation/pages/videos/videos_lesson_page.dart';

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
      name: AppRoutes.newBottomNavigationBar,
      page: () => NewBottomNavigationBar(),
    ),
    GetPage(
      name: AppRoutes.homePage,
      page: () => HomePage(),
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
      name: AppRoutes.registerProfilePage,
      page: () => RegisterProfilePage(),
    ),
    GetPage(
      name: AppRoutes.parentRegisterProfilePage,
      page: () => ParentRegisterProfilePage(),
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
    GetPage(
      name: AppRoutes.studentHybridProfilePage,
      page: () => StudentHybridProfilePage(),
    ),
    GetPage(
      name: AppRoutes.studentOnlineProfilePage,
      page: () => StudentOnlineProfilePage(),
    ),
    GetPage(
      name: AppRoutes.parentProfilePage,
      page: () => ParentProfilePage(),
    ),
    GetPage(
      name: AppRoutes.teacherExpProfilePage,
      page: () => TeacherWithExpProfilePage(),
    ),
    GetPage(
      name: AppRoutes.studyMaterialPage,
      page: () => StudyMaterialPage(),
    ),
    GetPage(
      name: AppRoutes.newBottomNavigationBar,
      page: () => NewBottomNavigationBar(),
    ),
    GetPage(
      name: AppRoutes.myProgressPage,
      page: () => MyProgressPage(),
    ),
    GetPage(
      name: AppRoutes.communicationPage,
      page: () => CommunicationPage(),
    ),
    GetPage(
      name: AppRoutes.examPaymentPage,
      page: () => ExamPaymentPage(),
    ),
    GetPage(
      name: AppRoutes.periodPaymentPage,
      page: () => PeriodPaymentPage(),
    ),
    GetPage(
      name: AppRoutes.videosLessonPage,
      page: () => VideosLessonPage(),
    ),
    GetPage(
      name: AppRoutes.impVideosLessonPage,
      page: () => ImpVideosLessonPage(),
    ),
    GetPage(
      name: AppRoutes.conversationScreenUi,
      page: () => ConversationScreenUi(),
    ),
  ];
}

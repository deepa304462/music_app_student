import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/routes/app_pages.dart';
import 'package:music_app_student/core/config/routes/app_routes.dart';
import 'package:music_app_student/core/config/theme/app_theme.dart';
import 'package:music_app_student/core/nav/new_bottom_navigation_bar.dart';
import 'package:music_app_student/core/presentation/pages/ebook/ebook_page.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        title: "Student Music App",
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.dark,
        // home: NewBottomNavigationBar(),
        // initialRoute: AppRoutes.splashPage,
        // initialRoute: AppRoutes.eBookPage,
        // initialRoute: AppRoutes.profilePage,
        // initialRoute: AppRoutes.parentProfilePage,
        // initialRoute: AppRoutes.eBookPage,
        // initialRoute: AppRoutes.editProfilePage,
        // initialRoute: AppRoutes.editProfilePenPage,
        // initialRoute: AppRoutes.editProfileePage,
        // initialRoute: AppRoutes.examRegistrationPage,
        // initialRoute: AppRoutes.changeCourseExamRegistrationPage,
        // initialRoute: AppRoutes.joinClassPage,
        // initialRoute: AppRoutes.myMarksheetPage,
        // initialRoute: AppRoutes.termsConditionPage,
        // initialRoute: AppRoutes.liveStreamingPage,
        // initialRoute: AppRoutes.scheduleClassesPage,
        // initialRoute: AppRoutes.myGuitarClassDetailPage,
        // initialRoute: AppRoutes.myGuitarClassPage,
        // initialRoute: AppRoutes.teacherProfilePage,
        // initialRoute: AppRoutes.parentProfilePage,
        // initialRoute: AppRoutes.studyMaterialPage,
        // initialRoute: AppRoutes.previousFeedBackPage,
        // initialRoute: AppRoutes.newBottomNavigationBar,
        // initialRoute: AppRoutes.communicationPage,
        // initialRoute: AppRoutes.notificationTemplate,
        // initialRoute: AppRoutes.paymentPage,
        // initialRoute: AppRoutes.examPaymentPage,
        // initialRoute: AppRoutes.periodPaymentPage,
        // initialRoute: AppRoutes.newBottomNavigationBar,
        // initialRoute: AppRoutes.registerProfilePage,
        // initialRoute: AppRoutes.conversationScreenUi,
        // initialRoute: AppRoutes.impVideosLessonPage,
        // initialRoute: AppRoutes.videosLessonPage,
        // initialRoute: AppRoutes.joinClassPage,
        // initialRoute: AppRoutes.scheduleClassesPage,
        // initialRoute: AppRoutes.studentHybridProfilePage,
        // initialRoute: AppRoutes.studentOnlineProfilePage,
        // initialRoute: AppRoutes.myProgressPage,
        initialRoute: AppRoutes.splashPage,
        getPages: AppPage.page,
      ),
    );
  }
}

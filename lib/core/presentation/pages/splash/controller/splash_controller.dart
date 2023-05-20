import 'dart:async';

import 'package:get/get.dart';
import 'package:music_app_student/core/presentation/pages/auth/login_option/login_option_page.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getNextPage();
  }

  getNextPage() {
    Timer(
      const Duration(milliseconds: 2000),
      () => Get.offAll(
        LoginOptionPage(),
      ),
    );
  }
}

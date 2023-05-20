import 'dart:async';

import 'package:get/get.dart';
import 'package:music_app_student/core/presentation/pages/intro/intro_page.dart';

class LoginOptionController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getNextPage();
  }

  getNextPage() {
    Timer(
      const Duration(milliseconds: 2000),
      () => Get.to(
        IntroPage(),
      ),
    );
  }
}

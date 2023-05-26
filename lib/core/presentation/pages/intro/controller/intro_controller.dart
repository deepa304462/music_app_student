import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/presentation/pages/auth/login/login_template_page.dart';

class IntroController extends GetxController {
  int counter = 2;
  int selectedIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  void nextPage() {
    selectedIndex + 1 == introListData.length
        ? Get.to(() => const LoginTamplatePage())
        : pageController.nextPage(
            duration: const Duration(seconds: 1),
            curve: Curves.linear,
          );
    print("------${selectedIndex + 1}");
    print("total-----${introListData.length}");
    update();
  }

  onPageChanged(value) {
    selectedIndex = value;
    update();
    log("print=======>${selectedIndex}");
  }

  List introListData = [
    {
      'image': "assets/images/music-1.png",
      "description":
          " Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. ",
    },
    {
      'image': "assets/images/intro-2.png",
      "description":
          " Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. ",
    },
    {
      'image': "assets/images/intro-3.png",
      "description":
          " Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. ",
    },
    {
      'image': "assets/images/intro-4.png",
      "description":
          " Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. ",
    },
    {
      'image': "assets/images/intro-5.png",
      "description":
          " Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. ",
    },
    {
      'image': "assets/images/intro-6.png",
      "description":
          " Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. ",
    },
  ];
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewBottomNavigationBarController extends GetxController {
  var isActiveHome = true;

  var isActiveCommunity = false;

  var isActiveStudy = false;

  var isActiveChat = false;

  var isActiveMyProgress = false;
  PageController pageController = PageController(
    initialPage: 0,
  );

  onTapHome() {
    isActiveHome = true;
    isActiveCommunity = false;
    isActiveStudy = false;
    isActiveChat = false;
    isActiveMyProgress = false;

    pageController.animateToPage(0,
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
    update();
  }

  onTapCommunity() {
    isActiveHome = false;
    isActiveCommunity = true;
    isActiveStudy = false;
    isActiveChat = false;
    isActiveMyProgress = false;
    pageController.animateToPage(1,
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
    update();
  }

  onTapStudy() {
    isActiveHome = false;
    isActiveCommunity = false;
    isActiveStudy = true;
    isActiveChat = false;
    isActiveMyProgress = false;
    pageController.animateToPage(2,
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
    update();
  }

  onTapChat() {
    isActiveHome = false;
    isActiveCommunity = false;
    isActiveStudy = false;
    isActiveChat = true;
    isActiveMyProgress = false;
    pageController.animateToPage(3,
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
    update();
  }

  onTapProgress() {
    isActiveHome = false;
    isActiveCommunity = false;
    isActiveStudy = false;
    isActiveChat = false;
    isActiveMyProgress = true;
    pageController.animateToPage(4,
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
    update();
  }
}

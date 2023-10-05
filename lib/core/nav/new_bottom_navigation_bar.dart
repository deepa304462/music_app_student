import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/nav/controller/new_bottom_navigation_controller.dart';
import 'package:music_app_student/core/presentation/pages/communication/communication_page.dart';
import 'package:music_app_student/core/presentation/pages/community/community_page.dart';
import 'package:music_app_student/core/presentation/pages/home/home_page.dart';
import 'package:music_app_student/core/presentation/pages/progress/my_progress_page.dart';
import 'package:music_app_student/core/presentation/pages/study_material/study_material_page.dart';

class NewBottomNavigationBar extends StatelessWidget {
  NewBottomNavigationBar({super.key});
  final controller = Get.put(NewBottomNavigationBarController());
  @override
  Widget build(BuildContext context) {
    Size sizeScreen = MediaQuery.of(context).size;
    return GetBuilder<NewBottomNavigationBarController>(builder: (context) {
      return Scaffold(
        body: PageView(
          controller: controller.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            HomePage(),
            CommunityPage(),
            StudyMaterialPage(),
            CommunicationPage(),
            MyProgressPage(),
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 104,
          child: Container(
            height: 104,
            width: sizeScreen.width,
            decoration: BoxDecoration(
                color: AppColor.appThemeColor,
                border: Border.all(color: AppColor.white255),
                borderRadius: BorderRadius.circular(40)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: controller.onTapHome,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: controller.isActiveHome
                          ? AppColor.yellow29
                          : Colors.transparent,
                    ),
                    child: SvgPicture.asset(
                      "assets/svg/home.svg",
                      height: controller.isActiveHome ? 30 : 20,
                      width: controller.isActiveHome ? 30 : 20,
                      color: controller.isActiveHome
                          ? AppColor.appThemeColor
                          : AppColor.yellow29,
                    ),
                  ),
                ),
                InkWell(
                  onTap: controller.onTapCommunity,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: controller.isActiveCommunity
                          ? AppColor.yellow29
                          : Colors.transparent,
                    ),
                    child: SvgPicture.asset(
                      "assets/svg/community.svg",
                      height: controller.isActiveCommunity ? 30 : 20,
                      width: controller.isActiveCommunity ? 30 : 20,
                      color: controller.isActiveCommunity
                          ? AppColor.appThemeColor
                          : AppColor.yellow29,
                    ),
                  ),
                ),
                InkWell(
                  onTap: controller.onTapStudy,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: controller.isActiveStudy
                          ? AppColor.yellow29
                          : Colors.transparent,
                    ),
                    child: SvgPicture.asset(
                      "assets/svg/study-icon.svg",
                      height: controller.isActiveStudy ? 30 : 20,
                      width: controller.isActiveStudy ? 30 : 20,
                      color: controller.isActiveStudy
                          ? AppColor.appThemeColor
                          : AppColor.yellow29,
                    ),
                  ),
                ),
                InkWell(
                  onTap: controller.onTapChat,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: controller.isActiveChat
                          ? AppColor.yellow29
                          : Colors.transparent,
                    ),
                    child: SvgPicture.asset(
                      "assets/svg/chat.svg",
                      height: controller.isActiveChat ? 30 : 20,
                      width: controller.isActiveChat ? 30 : 20,
                      color: controller.isActiveChat
                          ? AppColor.appThemeColor
                          : AppColor.yellow29,
                    ),
                  ),
                ),
                InkWell(
                  onTap: controller.onTapProgress,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: controller.isActiveMyProgress
                          ? AppColor.yellow29
                          : Colors.transparent,
                    ),
                    child: SvgPicture.asset(
                      "assets/svg/progress.svg",
                      height: controller.isActiveMyProgress ? 30 : 20,
                      width: controller.isActiveMyProgress ? 30 : 20,
                      color: controller.isActiveMyProgress
                          ? AppColor.appThemeColor
                          : AppColor.yellow29,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

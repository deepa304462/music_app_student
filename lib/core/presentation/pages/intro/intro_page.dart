import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/auth/login/login_template_page.dart';
import 'package:music_app_student/core/presentation/pages/intro/controller/intro_controller.dart';

class IntroPage extends StatelessWidget {
  IntroPage({super.key});
  final controller = Get.put(IntroController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<IntroController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              tag: "logo",
              child: Image.asset(
                "assets/images/music_logo.png",
                height: 52,
                width: 52,
              ),
            ),
          ),
          actions: [
            TextButton(
              child: Text(
                "Skip",
                style: TextStyle(
                  color: AppColor.yellow29,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: AppTextStyle.textStylePoppins,
                ),
              ),
              onPressed: () {
                Get.to(const LoginTamplatePage());
              },
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 9,
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: controller.pageController,
                onPageChanged: (value) {
                  controller.onPageChanged(value);
                  controller.update();
                  log(value.toString());
                },
                children: List.generate(
                  controller.introListData.length,
                  (index) => _introView(
                    imagePath: "${controller.introListData[index]['image']}",
                    description:
                        "${controller.introListData[index]['description']}",
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: MaterialButton(
                        minWidth: 177,
                        height: 60,
                        color: AppColor.yellow29,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        onPressed: () {
                          controller.nextPage();
                        },
                        child: Text(
                          "Next",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColor.white255,
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        controller.introListData.length,
                        (index) => Indigator(
                          duration: Duration(microseconds: 1),
                          isActive:
                              controller.selectedIndex == index ? true : false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _introView({String? imagePath, String? description}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "$imagePath",
            height: 316,
          ),
          SizedBox(
            width: 319,
            child: Text(
              "$description",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AppTextStyle.textStyleInter,
                fontWeight: FontWeight.w500,
                color: AppColor.white255,
                fontStyle: FontStyle.italic,
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Indigator extends StatelessWidget {
  const Indigator({
    super.key,
    this.isActive = false,
    this.duration = const Duration(milliseconds: 2000),
  });
  final bool isActive;
  final Duration duration;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: duration,
      height: 11,
      width: isActive ? 71 : 14,
      margin: const EdgeInsets.only(left: 5, top: 30),
      decoration: BoxDecoration(
        borderRadius:
            isActive ? BorderRadius.circular(8) : BorderRadius.circular(15),
        color: isActive ? AppColor.white255 : Colors.transparent,
        border: Border.all(
          color: isActive ? Colors.transparent : AppColor.white255,
        ),
      ),
    );
  }
}

/*
_introView(
                    imagePath: "assets/images/music-1.png",
                   ,
                  ),
                  _introView(
                    imagePath: "assets/images/intro-2.png",
                    description:
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. ",
                  ),
                  _introView(
                    imagePath: "assets/images/intro-3.png",
                    description:
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. ",
                  ),
                  _introView(
                    imagePath: "assets/images/intro-4.png",
                    description:
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. ",
                  ),
                  _introView(
                    imagePath: "assets/images/intro-5.png",
                    description:
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. ",
                  ),
                  _introView(
                    imagePath: "assets/images/intro-6.png",
                    description:
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. ",
                  ),

*/

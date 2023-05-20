import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/widgets/custom_appbar.dart';

import 'controller/previous_feedback_controller.dart';

class PreviousFeedbackPage extends StatelessWidget {
  PreviousFeedbackPage({super.key});
  final previousFeedbackController = Get.put(PreviousFeedbackController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onBackPressed: () {},
        centerTitle: true,
        title: "Previous Feedback",
        fontFamily: AppTextStyle.textStylePoppins,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.28,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(
                40,
                (index) => Container(
                  height: 130,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColor.white205,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 26,
                        width: 126,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColor.brown23,
                        ),
                        child: RichText(
                          text: TextSpan(
                              text: "Date :",
                              style: TextStyle(
                                fontFamily: AppTextStyle.textStyleInter,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                              children: [
                                TextSpan(
                                  text: " Jan 12, 2022",
                                  style: TextStyle(
                                    fontFamily: AppTextStyle.textStyleInter,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ]),
                        ),
                      ),
                      Text(
                        "Feedback goes here and can go beyond one or two lines.",
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStyleInter,
                          fontSize: 16,
                          color: AppColor.black,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

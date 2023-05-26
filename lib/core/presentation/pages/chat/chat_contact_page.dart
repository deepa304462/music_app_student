import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/chat/conversation_screen_ui.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatContactPage extends StatelessWidget {
  const ChatContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Get.to(const ConversationScreenUi());
          },
          child: Container(
            width: double.infinity,
            height: 74,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: AppColor.white255,
              ),
            ),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 53.52,
                      width: 53.52,
                      padding: const EdgeInsets.all(2),
                      margin: const EdgeInsets.only(left: 10, right: 4),
                      decoration: BoxDecoration(
                        color: AppColor.white255,
                        shape: BoxShape.circle,
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/men.png"),
                      ),
                    ),
                    index == 0
                        ? Positioned(
                            right: 3,
                            top: 3,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColor.green63,
                                border: Border.all(
                                  color: AppColor.white255,
                                  width: 1.2,
                                ),
                              ),
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
                2.w.widthBox,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Guitar Class",
                              style: TextStyle(
                                color: AppColor.blue224,
                              ),
                            ),
                            Text(
                              "10.45",
                              style: TextStyle(
                                color: AppColor.blue224,
                                fontFamily: AppTextStyle.textStyleMulish,
                                fontSize: 8.56,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      1.h.heightBox,
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "tempor incididunt ut labore et dolore",
                              style: TextStyle(
                                color: AppColor.white255,
                                fontFamily: AppTextStyle.textStyleMulish,
                                fontSize: 10.7,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            index == 0
                                ? Container(
                                    height: 16.06,
                                    width: 16.06,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: AppColor.yellow29,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Text(
                                      "1",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColor.white255,
                                        fontFamily:
                                            AppTextStyle.textStyleMulish,
                                        fontSize: 8.56,
                                      ),
                                    ),
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ));
  }
}

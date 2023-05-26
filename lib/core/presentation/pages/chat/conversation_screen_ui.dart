import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'components/bottom_send_navigation.dart';

class ConversationScreenUi extends StatelessWidget {
  const ConversationScreenUi({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appThemeColor,
      body: Column(
        children: [
          2.h.heightBox,
          _appBar(),
          1.h.heightBox,
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: BottomSendNavigation(),
            ),
          ),
        ],
      ),
    );
  }

  Container _appBar() {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(top: 20),
      color: AppColor.appThemeColor,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColor.white255,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: Stack(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColor.white255, width: 2),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/jack.png"),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 3,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.green63,
                        border: Border.all(color: AppColor.white255, width: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            4.w.widthBox,
            Text(
              "Milano",
              style: TextStyle(
                fontFamily: AppTextStyle.textStyleRaleway,
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: AppColor.yellow29,
              ),
            )
          ],
        ),
        const SizedBox(
          width: 50,
        ),
      ]),
    );
  }
}

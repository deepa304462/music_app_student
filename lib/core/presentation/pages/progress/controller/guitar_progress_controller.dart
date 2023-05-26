import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class GuitarProgressController extends GetxController {
  showBottomModelSheetBox() {
    return Get.bottomSheet(
      Container(
        height: 280,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
            color: AppColor.white255,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Upload your performance",
              style: TextStyle(
                fontFamily: AppTextStyle.textStylePoppins,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColor.black,
              ),
            ),
            Text(
              "You can upload .jpef, .png, .pdf file and max size be 500kb",
              style: TextStyle(
                fontFamily: AppTextStyle.textStylePoppins,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColor.black,
              ),
            ),
            5.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.blue224,
                      ),
                      child: SvgPicture.asset("assets/svg/go_live-1.svg"),
                    ),
                    1.h.heightBox,
                    Text(
                      "Go Live",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStylePoppins,
                        fontSize: 20,
                        color: AppColor.blue224,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.blue224,
                      ),
                      child: SvgPicture.asset("assets/svg/gallary.svg"),
                    ),
                    1.h.heightBox,
                    Text(
                      "Browse Gallery",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStylePoppins,
                        fontSize: 20,
                        color: AppColor.blue224,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

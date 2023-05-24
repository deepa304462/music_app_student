import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class JoinClassController extends GetxController {
  List imageList = [
    "assets/images/item-1.png",
    "assets/images/item-2.png",
    "assets/images/item-3.png",
    "assets/images/item-4.png",
    "assets/images/item-5.png",
  ];

  ratingDiloag() {
    return Get.dialog(Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(21.24),
      ),
      child: Container(
        height: 403,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            4.h.heightBox,
            Text(
              "Rate Your Experience with teacher",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AppTextStyle.textStyleMulish,
                fontSize: 15.93,
                fontWeight: FontWeight.w700,
              ),
            ),
            3.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                imageList.length,
                (index) => Image.asset(
                  imageList[index],
                  height: 40,
                  width: 40,
                ),
              ),
            ),
            4.h.heightBox,
            Container(
              height: 130,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/textarea.png"),
                ),
              ),
              child: Text(
                "Write your Experience",
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontFamily: AppTextStyle.textStyleMulish,
                  fontSize: 12.39,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            2.h.heightBox,
            MaterialButton(
              minWidth: double.infinity,
              height: 42.48,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.16),
              ),
              color: AppColor.black29,
              onPressed: () {},
              child: Text(
                "Submit",
                style: TextStyle(
                  fontFamily: AppTextStyle.textStyleMulish,
                  fontSize: 14.16,
                  fontWeight: FontWeight.w700,
                  color: AppColor.white255,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

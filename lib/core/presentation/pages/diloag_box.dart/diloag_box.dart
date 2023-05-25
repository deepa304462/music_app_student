import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class DiloagBox {
  static instrumentDiloagBox() {
    return Get.dialog(
      Dialog(
        backgroundColor: AppColor.appThemeColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17.91),
        ),
        child: SizedBox(
          height: 480,
          child: Column(
            children: [
              _cardView(
                backgroundColor: AppColor.white255,
                imagePath: "assets/images/guitar-11.png",
                title: "Guitar",
                subTitle: "in class",
                member: "45 Member",
                titleColor: AppColor.blue37,
                subTitleColor: AppColor.blue37.withOpacity(0.3),
                memberColor: AppColor.blue37,
              ),
              2.h.heightBox,
              _cardView(
                backgroundColor: AppColor.white255,
                imagePath: "assets/images/saxophone.png",
                title: "Guitar",
                subTitle: "in class",
                member: "45 Member",
                titleColor: AppColor.blue37,
                subTitleColor: AppColor.blue37.withOpacity(0.3),
                memberColor: AppColor.blue37,
              ),
              2.h.heightBox,
              _cardView(
                backgroundColor: AppColor.blue224,
                imagePath: "assets/images/drum.png",
                title: "Guitar",
                subTitle: "in class",
                member: "45 Member",
                titleColor: AppColor.white255,
                subTitleColor: AppColor.white255.withOpacity(0.3),
                memberColor: AppColor.white255,
              ),
              2.h.heightBox,
              _cardView(
                backgroundColor: AppColor.white255,
                imagePath: "assets/images/piano-1.png",
                title: "Guitar",
                subTitle: "in class",
                member: "45 Member",
                titleColor: AppColor.blue37,
                subTitleColor: AppColor.blue37.withOpacity(0.3),
                memberColor: AppColor.blue37,
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Container _cardView({
    String? title,
    String? subTitle,
    String? member,
    Color? backgroundColor,
    String? imagePath,
    Color? titleColor,
    Color? subTitleColor,
    Color? memberColor,
  }) {
    return Container(
      height: 107,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(17.91),
      ),
      child: Row(
        children: [
          Image.asset(
            "$imagePath",
            height: 77,
            width: 77,
          ),
          6.w.widthBox,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$title",
                style: TextStyle(
                  fontFamily: AppTextStyle.textStyleMulish,
                  fontSize: 19.7,
                  fontWeight: FontWeight.w900,
                  color: titleColor,
                ),
              ),
              1.h.heightBox,
              Text(
                "$subTitle",
                style: TextStyle(
                    fontFamily: AppTextStyle.textStyleMulish,
                    fontSize: 10.75,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    color: subTitleColor
                    // color: AppColor.blue37.withOpacity(0.3),
                    ),
              ),
              1.h.heightBox,
              Text(
                "$member",
                style: TextStyle(
                  fontFamily: AppTextStyle.textStyleMulish,
                  fontSize: 14.75,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  color: memberColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

//Cover Class DiloagBox

  static coverClassDiloagBox() {
    return Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: SizedBox(
          height: 333,
          width: double.infinity,
          child: Column(
            children: [
              2.h.heightBox,
              Text(
                "Cover Class",
                style: TextStyle(
                  color: AppColor.black,
                  fontFamily: AppTextStyle.textStyleMulish,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              2.h.heightBox,
              Container(
                height: 56,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.black),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Date of class",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: AppColor.black,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.calendar_month),
                    ),
                  ],
                ),
              ),
              3.h.heightBox,
              Container(
                height: 56,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.black),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Select to schedule",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: AppColor.black,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/svg/drop_down.svg"),
                    ),
                  ],
                ),
              ),
              4.h.heightBox,
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36),
                ),
                color: AppColor.blue224,
                minWidth: 270,
                height: 60,
                onPressed: () {},
                child: Text(
                  "Submit",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: AppTextStyle.textStyleMulish,
                    fontSize: 24,
                    color: AppColor.white255,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

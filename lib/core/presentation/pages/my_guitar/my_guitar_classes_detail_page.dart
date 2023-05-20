import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/my_guitar/controller/my_guitar_classes_controller.dart';
import 'package:music_app_student/core/presentation/widgets/custom_appbar.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class MyGuitarClassesDetailPage extends StatelessWidget {
  MyGuitarClassesDetailPage({super.key});
  final controller = Get.put(MyGuitarClassesController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onBackPressed: () {},
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          2.h.heightBox,
          Image.asset("assets/images/guitar-1.png"),
          5.h.heightBox,
          Align(
            child: Text(
              "My Guitar Class",
              style: TextStyle(
                fontFamily: AppTextStyle.textStylePoppins,
                fontSize: 30,
                color: AppColor.yellow29,
                letterSpacing: -0.28,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          2.h.heightBox,
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mentor Name : Loren ipsum",
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleMulish,
                      fontSize: 15.71,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.36,
                      fontStyle: FontStyle.italic,
                      color: AppColor.white255,
                    ),
                  ),
                  Text(
                    "Class Timings: 12 PM-3 PM",
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleMulish,
                      fontSize: 15.71,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.36,
                      fontStyle: FontStyle.italic,
                      color: AppColor.white255,
                    ),
                  ),
                  2.h.heightBox,
                  RichText(
                    text: TextSpan(
                      text: "Copy Your Upcoming class will be on ",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 15.71,
                        fontWeight: FontWeight.w600,
                        color: AppColor.white255.withOpacity(0.5),
                        fontStyle: FontStyle.italic,
                      ),
                      children: [
                        TextSpan(
                          text: "Sunday, May 12, 2023",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 15.71,
                            fontWeight: FontWeight.w800,
                            color: AppColor.white255,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        TextSpan(
                          text: "on guitar tuning lesson on.",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 15.71,
                            fontWeight: FontWeight.w600,
                            color: AppColor.white255.withOpacity(0.5),
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        TextSpan(
                          text: "12 PM-3 PM.",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 15.71,
                            fontWeight: FontWeight.w800,
                            color: AppColor.white255,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ),
                  2.h.heightBox,
                  Text(
                    "Current Level: Level 8",
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleMulish,
                      fontSize: 15.71,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.36,
                      fontStyle: FontStyle.italic,
                      color: AppColor.white255,
                    ),
                  ),
                  1.h.heightBox,
                  Text(
                    "Badges Collected: 20 badges",
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleMulish,
                      fontSize: 15.71,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.36,
                      fontStyle: FontStyle.italic,
                      color: AppColor.white255,
                    ),
                  ),
                  5.h.heightBox,
                  Align(
                    child: _materialButton(
                      onPressed: () {},
                      minWidth: 212,
                      text: "Join Online Class",
                    ),
                  ),
                  4.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _materialButton(
                        minWidth: 155,
                        onPressed: () {},
                        text: "Apply Leave",
                      ),
                      _materialButton(
                        minWidth: 155,
                        onPressed: () {},
                        text: "Reschedule ",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  MaterialButton _materialButton({
    String? text,
    double? minWidth,
    void Function()? onPressed,
  }) {
    return MaterialButton(
      height: 54,
      minWidth: minWidth,
      color: AppColor.blue224,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(33),
      ),
      onPressed: () {},
      child: Text(
        "$text",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: AppTextStyle.textStylePoppins,
          fontSize: 18.29,
          color: AppColor.white255,
          fontWeight: FontWeight.w800,
          letterSpacing: -0.22,
        ),
      ),
    );
  }
}

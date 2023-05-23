import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/progress/guitar_progress_page.dart';
import 'package:music_app_student/core/presentation/pages/progress/piano_progress_page.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class MyProgressPage extends StatelessWidget {
  const MyProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Progress",
          style: TextStyle(
            fontFamily: AppTextStyle.textStylePoppins,
            color: AppColor.blue224,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.28,
          ),
        ),
      ),
      body: Column(
        children: [
          _myGuitarClass(
            onTap: () {
              Get.to(GuitarProgressPage());
            },
            imagePath: 'assets/images/guitar-1.png',
            text: "My Guitar Class",
          ),
          4.h.heightBox,
          _myGuitarClass(
            onTap: () {
              Get.to(PianoProgressPage());
            },
            imagePath: 'assets/images/piano.png',
            text: "My Piano Class",
          ),
        ],
      ),
    );
  }

  _myGuitarClass({
    void Function()? onTap,
    String? imagePath,
    String? text,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 184,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.9),
          color: AppColor.white255,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "$imagePath",
                      height: 88.81,
                      width: 90.9,
                    ),
                    MaterialButton(
                      minWidth: 88,
                      color: AppColor.blue224,
                      height: 40,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          13.25,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Join Online\nClass",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStylePoppins,
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.22,
                          color: AppColor.white255,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$text",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStylePoppins,
                        fontSize: 24,
                        color: AppColor.yellow29,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.28,
                      ),
                    ),
                    1.h.heightBox,
                    Text(
                      "Mentor Name : Loren ipsum",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 10,
                        fontStyle: FontStyle.italic,
                        letterSpacing: -0.23,
                        color: AppColor.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    0.4.h.heightBox,
                    Text(
                      "Class Timings: 12 PM-3 PM",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 10,
                        fontStyle: FontStyle.italic,
                        letterSpacing: -0.23,
                        color: AppColor.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    1.h.heightBox,
                    SizedBox(
                      width: 210,
                      child: Text(
                        "Your Upcoming class will be on Sunday, on guitar tuning lesson on 12 PM-3 PM.",
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStyleMulish,
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          letterSpacing: -0.23,
                          color: AppColor.black.withOpacity(0.5),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    1.h.heightBox,
                    SizedBox(
                      width: 210,
                      child: Text(
                        "Current Level: Level 8",
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStyleMulish,
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          letterSpacing: -0.23,
                          color: AppColor.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    0.4.h.heightBox,
                    SizedBox(
                      width: 210,
                      child: Text(
                        "Badges Collected: 20 badges",
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStyleMulish,
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          letterSpacing: -0.23,
                          color: AppColor.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    1.h.heightBox,
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

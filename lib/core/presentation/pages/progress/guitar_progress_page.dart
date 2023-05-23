import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import 'package:sizer/sizer.dart';

import 'package:velocity_x/velocity_x.dart';

import 'controller/guitar_progress_controller.dart';

class GuitarProgressPage extends StatelessWidget {
  GuitarProgressPage({super.key});
  final controller = Get.put(GuitarProgressController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
        centerTitle: true,
        title: Text(
          "Progress",
          style: TextStyle(
            color: AppColor.blue224,
            fontFamily: AppTextStyle.textStylePoppins,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.28,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 40, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/guitar.png",
                    height: 81,
                    width: 83,
                  ),
                  2.w.widthBox,
                  Text(
                    "Guitar Lesson",
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleMulish,
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.28,
                      color: AppColor.blue224,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SvgPicture.asset("assets/svg/curve.svg"),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "July",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStylePoppins,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                          children: const [
                            TextSpan(text: "\n"),
                            TextSpan(
                              text: "2022",
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "Sep",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStylePoppins,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                          children: const [
                            TextSpan(text: "\n"),
                            TextSpan(
                              text: "2022",
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "Nov",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStylePoppins,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                          children: const [
                            TextSpan(text: "\n"),
                            TextSpan(
                              text: "2022",
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "Jan",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStylePoppins,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                          children: const [
                            TextSpan(text: "\n"),
                            TextSpan(
                              text: "2023",
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "Murch",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStylePoppins,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                          children: const [
                            TextSpan(text: "\n"),
                            TextSpan(
                              text: "2023",
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "May",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStylePoppins,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                          children: const [
                            TextSpan(text: "\n"),
                            TextSpan(
                              text: "2023",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                3.h.heightBox,
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Music Board Opted:",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -0.28,
                      ),
                      children: [
                        const TextSpan(text: "\t\t\t"),
                        TextSpan(
                          text: "Trinity College London",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            letterSpacing: -0.28,
                          ),
                        ),
                      ],
                    ),
                  ),
                  2.h.heightBox,
                  Container(
                    height: 84,
                    color: AppColor.white255,
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Assignment performance",
                                style: TextStyle(
                                  color: AppColor.yellow29,
                                  fontFamily: AppTextStyle.textStylePoppins,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  text: "ID : ",
                                  style: TextStyle(
                                    fontFamily: AppTextStyle.textStylePoppins,
                                    fontSize: 10,
                                    color: AppColor.black29,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  children: const [
                                    TextSpan(
                                      text: "homework_032",
                                    ),
                                  ],
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  text: "Submitted on: ",
                                  style: TextStyle(
                                    fontFamily: AppTextStyle.textStylePoppins,
                                    fontSize: 10,
                                    color: AppColor.black29,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  children: const [
                                    TextSpan(
                                      text: "30 Aug, 2018 at 3:40PM",
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 78,
                          height: 74,
                          margin: const EdgeInsets.only(right: 6),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColor.blue224,
                          ),
                          child: SvgPicture.asset("assets/svg/A+.svg"),
                        )
                      ],
                    ),
                  ),
                  2.h.heightBox,
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            height: 161,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.white255,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Syllabus\ncoverage",
                                  style: TextStyle(
                                    fontFamily: AppTextStyle.textStylePoppins,
                                    fontSize: 12,
                                    color: AppColor.black,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Align(
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: SimpleCircularProgressBar(
                                      // valueNotifier: ValueNotifier,
                                      mergeMode: true,
                                      size: 50,

                                      backStrokeWidth: 5,
                                      progressStrokeWidth: 9,
                                      progressColors: [AppColor.yellow29],
                                      onGetText: (double value) {
                                        return Text(
                                          '${value.toInt()}%',
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Text(
                                  "Current update\nof syllabus",
                                  style: TextStyle(
                                    fontFamily: AppTextStyle.textStylePoppins,
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        2.w.widthBox,
                        Expanded(
                          flex: 8,
                          child: InkWell(
                            onTap: () {},
                            child: Image.asset(
                              "assets/images/calender.png",
                              height: 191,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  2.h.heightBox,
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 120,
                      padding: const EdgeInsets.only(left: 10, right: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: AppColor.white255,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "My\nMarksheet",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColor.white255,
                              fontWeight: FontWeight.w800,
                              fontFamily: AppTextStyle.textStyleMulish,
                              fontSize: 24,
                            ),
                          ),
                          SvgPicture.asset(
                            "assets/svg/write_note.svg",
                            height: 80,
                            width: 91,
                          )
                        ],
                      ),
                    ),
                  ),
                  2.h.heightBox,
                  materialButton(
                    onPressed: () {},
                    text: "Upload assignment",
                  ),
                  materialButton(
                    onPressed: () {},
                    text: "View previous Feedback",
                  ),
                  materialButton(
                    onPressed: () {},
                    text: "Review the teacher",
                  ),
                  4.h.heightBox,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container materialButton({void Function()? onPressed, String? text}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: MaterialButton(
        minWidth: double.infinity,
        color: AppColor.blue224,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(36),
        ),
        onPressed: onPressed,
        height: 60,
        child: Text(
          "$text",
          style: TextStyle(
            fontFamily: AppTextStyle.textStyleMulish,
            fontSize: 24,
            fontStyle: FontStyle.italic,
            color: AppColor.white255,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

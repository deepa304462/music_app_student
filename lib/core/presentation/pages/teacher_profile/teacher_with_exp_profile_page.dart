import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:get/get_navigation/get_navigation.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../config/helpers/app_color.dart';

class TeacherWithExpProfilePage extends StatelessWidget {
  const TeacherWithExpProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _header(),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: BoxDecoration(
                color: AppColor.white255,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Teaching Hours Till Date",
                    style: TextStyle(
                      color: AppColor.black,
                      fontFamily: AppTextStyle.textStyleInter,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    "25200 HOURS OF TEACHING",
                    style: TextStyle(
                      color: AppColor.black.withOpacity(0.3),
                      fontFamily: AppTextStyle.textStyleInter,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.02,
                      fontSize: 10,
                    ),
                  ),
                  Container(
                    height: 24,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(73),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(243, 177, 78, 1),
                          Color.fromRGBO(255, 206, 81, 1),
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset("assets/svg/circle-1.svg"),
                            SvgPicture.asset("assets/svg/time.svg"),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/svg/time.svg",
                              color: AppColor.white255,
                            ),
                            1.w.widthBox,
                            Text(
                              "25200",
                              style: TextStyle(
                                color: AppColor.black29,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  1.h.heightBox,
                  _currentMonthData(
                    title: "Beginner",
                    trailing: "2000",
                    onPressed: () {},
                  ),
                  _currentMonthData(
                      title: "Intermediate",
                      trailing: "2000",
                      onPressed: () {}),
                  _currentMonthData(
                    title: "Advanced",
                    trailing: "2000",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            2.h.heightBox,
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.white255,
              ),
              child: Column(
                children: [
                  Text(
                    "About Me",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleInter,
                      fontSize: 14.82,
                      color: AppColor.black,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  2.h.heightBox,
                  Text(
                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleInter,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            6.h.heightBox,
          ],
        ),
      ),
    );
  }

  InkWell _currentMonthData({
    String? title,
    String? trailing,
    void Function()? onPressed,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 45,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        margin: const EdgeInsets.symmetric(vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: AppColor.black29.withOpacity(0.5),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset("assets/svg/person_icon.svg"),
                2.w.widthBox,
                Text(
                  "$title",
                  style: TextStyle(
                    color: AppColor.black,
                    fontFamily: AppTextStyle.textStyleInter,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.03,
                  ),
                )
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/svg/time.svg",
                  color: AppColor.yellow29,
                ),
                2.w.widthBox,
                Text(
                  "$trailing",
                  style: TextStyle(
                    color: AppColor.black,
                    fontFamily: AppTextStyle.textStyleInter,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.03,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _header() {
    return SizedBox(
      height: 420,
      child: Stack(
        children: [
          Container(
            height: 276,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/bg.png"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: AppColor.white255,
                    ),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Teacher profile",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColor.white255,
                        fontFamily: AppTextStyle.textStylePoppins,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.28,
                      ),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 270,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColor.white255,
              ),
              child: Column(
                children: [
                  7.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Ram Charan",
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStylePoppins,
                          fontSize: 17.85,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      VxRating(
                        count: 1,
                        selectionColor: Colors.amber,
                        onRatingUpdate: (value) {},
                      ),
                      1.w.widthBox,
                      Text(
                        "4.5\t",
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStylePoppins,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.43,
                          color: AppColor.black29,
                        ),
                      ),
                      Text(
                        "(1000)",
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStylePoppins,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.43,
                          color: AppColor.black29,
                        ),
                      ),
                    ],
                  ),
                  1.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/guitar.png",
                        height: 41,
                        width: 42,
                      ),
                      2.w.widthBox,
                      RichText(
                        text: TextSpan(
                          text: "Exp: ",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 16,
                            color: AppColor.black29,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.59,
                          ),
                          children: const [
                            TextSpan(
                              text: "10 Years",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  1.h.heightBox,
                  RichText(
                    text: TextSpan(
                      text: "DOB\t",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 10.37,
                        color: AppColor.black.withOpacity(0.5),
                        fontWeight: FontWeight.w800,
                      ),
                      children: [
                        TextSpan(
                          text: ":\t15-03-2003",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 14.37,
                            color: AppColor.black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  1.h.heightBox,
                  RichText(
                    text: TextSpan(
                      text: "Date of Joining:\t",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 10.37,
                        color: AppColor.black.withOpacity(0.5),
                        fontWeight: FontWeight.w800,
                      ),
                      children: [
                        TextSpan(
                          text: ":\t1 20-05-2016",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 14.37,
                            color: AppColor.black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  1.h.heightBox,
                  RichText(
                    text: TextSpan(
                      text: "Phone Number\t",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 10.37,
                        color: AppColor.black.withOpacity(0.5),
                        fontWeight: FontWeight.w800,
                      ),
                      children: [
                        TextSpan(
                          text: ":\t9564564512",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 14.37,
                            color: AppColor.black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  1.h.heightBox,
                  RichText(
                    text: TextSpan(
                      text: "Email Id\t",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 10.37,
                        color: AppColor.black.withOpacity(0.5),
                        fontWeight: FontWeight.w800,
                      ),
                      children: [
                        TextSpan(
                          text: ":\t charan@45gmail.com",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 14.37,
                            color: AppColor.black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  1.h.heightBox,
                  RichText(
                    text: TextSpan(
                      text: "Pan No.\t",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 10.37,
                        color: AppColor.black.withOpacity(0.5),
                        fontWeight: FontWeight.w800,
                      ),
                      children: [
                        TextSpan(
                          text: ":\t  CKA3KNKLS4R",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 14.37,
                            color: AppColor.black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 95,
            left: 10,
            right: 10,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColor.white255, width: 5),
              ),
              child: Image.asset(
                "assets/images/jon.png",
                height: 100,
                width: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

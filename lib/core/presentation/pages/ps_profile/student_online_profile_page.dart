import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_constant.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/config/routes/app_routes.dart';
import 'package:music_app_student/core/presentation/pages/ps_profile/controller/student_online_profile_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class StudentOnlineProfilePage extends StatelessWidget {
  StudentOnlineProfilePage({super.key});
  final controller = Get.put(StudentOnlineProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                _header(),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Column(
                    children: [
                      _levelTwoCard(),
                      2.h.heightBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          1.h.heightBox,
                          RichText(
                            text: TextSpan(
                              text: "MEDALS",
                              style: TextStyle(
                                fontFamily: AppTextStyle.textStylePoppins,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: AppColor.white255,
                                letterSpacing: 0.02,
                              ),
                              children: [
                                TextSpan(
                                  text: "\t53",
                                  style: TextStyle(
                                    fontFamily: AppTextStyle.textStylePoppins,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.white255.withOpacity(0.5),
                                    letterSpacing: 0.02,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          1.h.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: _medalsCard(
                                  image:
                                      SvgPicture.asset("assets/svg/gold.svg"),
                                  color: AppColor.yellow82,
                                  isBoxShadow: true,
                                  title: "Gold",
                                  subTitle: "18",
                                ),
                              ),
                              Expanded(
                                child: _medalsCard(
                                  image:
                                      SvgPicture.asset("assets/svg/silver.svg"),
                                  title: "Silver",
                                  subTitle: "18",
                                  color: AppColor.grey132,
                                ),
                              ),
                              Expanded(
                                child: _medalsCard(
                                  image:
                                      SvgPicture.asset("assets/svg/Bronze.svg"),
                                  title: "Bronze",
                                  subTitle: "18",
                                  color: AppColor.brown131,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      2.h.heightBox,
                      _badgesCard(),
                      2.h.heightBox,
                      _myMusicClass(
                        onTap: () {},
                        text: "My Piano Class",
                        imagePath: "assets/images/piano.png",
                      ),
                      4.h.heightBox,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: MaterialButton(
                          color: AppColor.blue224,
                          minWidth: double.infinity,
                          height: 44,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(76.67),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Discontinue Course ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: AppTextStyle.textStyleMulish,
                              fontSize: 20,
                              color: AppColor.white255,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                      3.h.heightBox,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: MaterialButton(
                          color: AppColor.blue224,
                          minWidth: double.infinity,
                          height: 44,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(76.67),
                          ),
                          onPressed: () {
                            Get.toNamed(
                                AppRoutes.changeCourseExamRegistrationPage);
                          },
                          child: Text(
                            "Change Course",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: AppTextStyle.textStyleMulish,
                              fontSize: 20,
                              color: AppColor.white255,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                      20.h.heightBox,
                    ],
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
      height: 320,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: 270,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/unsplash.png"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
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
                      "My Profile",
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
              height: 180,
              alignment: Alignment.center,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColor.white255,
              ),
              child: Column(
                children: [
                  8.h.heightBox,
                  RichText(
                    text: TextSpan(
                      text: "Ram Chandran",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStylePoppins,
                        fontSize: 17.85,
                        color: AppColor.black,
                        fontWeight: FontWeight.w800,
                      ),
                      children: [
                        TextSpan(
                          text: "\t(Online)",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStylePoppins,
                            fontSize: 12,
                            color: AppColor.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  1.h.heightBox,
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 48, vertical: 15),
                    child: MaterialButton(
                      minWidth: 240,
                      height: 48,
                      color: AppColor.blue224,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11.9),
                      ),
                      onPressed: () {
                        Get.toNamed(AppRoutes.editProfilePage);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/svg/edit.svg"),
                          3.w.widthBox,
                          Text(
                            "Edit Profile",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: AppTextStyle.textStyleRobote,
                              fontSize: 17.85,
                              fontWeight: FontWeight.w800,
                              color: AppColor.white255,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 90,
            left: 10,
            right: 10,
            child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColor.blue224, width: 5),
                ),
                child: CircleAvatar(
                  child: Image.asset(
                    "assets/images/smith.png",
                  ),
                )),
          ),
        ],
      ),
    );
  }

  _myMusicClass({
    void Function()? onTap,
    String? text,
    String? imagePath,
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
                      '$imagePath',
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
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.teacherExpProfilePage);
                      },
                      child: Text(
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

  Column _badgesCard() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "BADGES",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: AppTextStyle.textStylePoppins,
              fontSize: 14.86,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.02,
              color: AppColor.white255,
            ),
          ),
        ),
        1.h.heightBox,
        Container(
          height: 350,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColor.white255,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                      AppConstant.badgesList.length,
                      (index) => Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        height: 60,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "${AppConstant.badgesList[index]['image']}",
                              height: 40,
                              width: 40,
                            ),
                            2.w.widthBox,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${AppConstant.badgesList[index]['name']}",
                                  style: TextStyle(
                                    fontFamily: AppTextStyle.textStyleInter,
                                    fontSize: 15.57,
                                    letterSpacing: 0.02,
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.black,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container _medalsCard({
    Widget? image,
    String? title,
    String? subTitle,
    Color? color = Colors.transparent,
    bool? isBoxShadow = false,
  }) {
    return Container(
      height: 105.84,
      width: 110.69,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: AppColor.white255,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: isBoxShadow == true
                ? BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.yellow29.withOpacity(0.15),
                        blurRadius: 12,
                        spreadRadius: 10,
                        offset: const Offset(4, 10),
                      )
                    ],
                  )
                : null,
            child: image,
          ),
          Text(
            "$title",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColor.black,
              fontFamily: AppTextStyle.textStyleInter,
              fontSize: 12.22,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.02,
            ),
          ),
          Container(
            height: 20,
            width: 20,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: color!.withOpacity(0.15),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              "$subTitle",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: color,
                fontFamily: AppTextStyle.textStyleInter,
                fontSize: 12.57,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.02,
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _levelTwoCard() {
    return Container(
      height: 114,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColor.white255,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColor.darkBlu36,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  "2",
                  style: TextStyle(
                    color: AppColor.white255,
                  ),
                ),
              ),
              4.w.widthBox,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Level 2 ",
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleInter,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.3,
                      color: AppColor.black,
                    ),
                  ),
                  Text(
                    "500 Points to next level",
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleInter,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.2,
                      color: AppColor.black.withOpacity(0.3),
                    ),
                  ),
                ],
              )
            ],
          ),
          2.h.heightBox,
          Stack(
            children: [
              Positioned(
                top: 3,
                right: 10,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/circle-1.svg",
                    ),
                    const Text("3"),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 30,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 2),
                      decoration: BoxDecoration(
                          color: AppColor.yellow29.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(40)),
                      child: Container(
                        height: 30,
                        width: 218,
                        margin: const EdgeInsets.only(right: 80),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(243, 177, 78, 1),
                              Color.fromRGBO(255, 206, 81, 1),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: AppColor.white255,
                      size: 18,
                    ),
                    2.w.widthBox,
                    RichText(
                      text: TextSpan(
                        text: "5200",
                        style: TextStyle(
                          color: const Color.fromRGBO(104, 86, 19, 1),
                          fontFamily: AppTextStyle.textStyleInter,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.02,
                        ),
                        children: [
                          const TextSpan(text: "/"),
                          TextSpan(
                            text: "6000",
                            style: TextStyle(
                              color: const Color.fromRGBO(104, 86, 19, 0.5),
                              fontFamily: AppTextStyle.textStyleInter,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.02,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 3,
                left: 10,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/circle-1.svg",
                    ),
                    const Text("2"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

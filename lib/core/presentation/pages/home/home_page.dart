import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/config/routes/app_routes.dart';
import 'package:music_app_student/core/presentation/pages/diloag_box.dart/diloag_box.dart';
import 'package:music_app_student/core/presentation/pages/home/controller/home_controller.dart';
import 'package:music_app_student/core/presentation/pages/progress/guitar_progress_page.dart';
import 'package:music_app_student/core/presentation/pages/progress/piano_progress_page.dart';
import 'package:music_app_student/core/presentation/pages/reschedule_diloagBox_view/rescheduale_diloag_box.dart';
import 'package:music_app_student/models/all_caurses_model.dart';
import 'package:music_app_student/models/my_profile_model.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../repository/auth_repository.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Get.put(HomeController());
  MyProfileModel myProfileModel = MyProfileModel();
  AllCoursesModel allCoursesModel = AllCoursesModel();

  @override
  void initState() {
    getAllCourses();
    getMyProfile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (context) {
      return Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: myProfileModel.user == null ?Center(child: CircularProgressIndicator(),):Column(
                children: [
                  _header(),
                  2.h.heightBox,
                  _feesTimeCalender(),
                  2.h.heightBox,
                  _classesRemaining(),
                  2.h.heightBox,
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.myGuitarClassDetailPage);
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Image.asset("assets/images/calender-1.png"),
                    ),
                  ),
                  2.h.heightBox,
                  _myMusicClass(
                    onTap: () {
                      Get.to(GuitarProgressPage());
                    },
                    imagePath: 'assets/images/guitar-1.png',
                    text: "My Guitar Class",
                  ),
                  4.h.heightBox,
                  _myMusicClass(
                    onTap: () {
                      Get.to(PianoProgressPage());
                    },
                    imagePath: 'assets/images/piano.png',
                    text: "My Piano Class",
                  ),
                  4.h.heightBox,
                  lessionClasses(),
                  2.h.heightBox,
                  registrationExamViewOnBottom(),
                  20.h.heightBox,
                ],
              ),
            ),
            _bottomSheetBtn(),
          ],
        ),
      );
    });
  }

  SizedBox lessionClasses() {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Videos Lession",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColor.yellow29,
                  fontFamily: AppTextStyle.textStyleMulish,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  letterSpacing: -0.28,
                ),
              ),
            ),
          ),
          2.h.heightBox,
          SizedBox(
            height: 204,
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.videosLessonPage);
                },
                child: Container(
                  height: 204,
                  width: 225,
                  margin: const EdgeInsets.only(left: 30),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColor.white255,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 127,
                        child: Image.asset("assets/images/guitar-post.png"),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tutor Name: Loren Ipsum",
                              style: TextStyle(
                                fontFamily: AppTextStyle.textStyleMulish,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.28,
                                color: AppColor.white255.withOpacity(0.5),
                              ),
                            ),
                            Text(
                              "Total Lessons: 10",
                              style: TextStyle(
                                fontFamily: AppTextStyle.textStyleMulish,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.28,
                                color: AppColor.white255.withOpacity(0.5),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          4.h.heightBox,
        ],
      ),
    );
  }

  registrationExamViewOnBottom() {
    return SizedBox(
      height: 151,
      child: Row(
        children: [
          SizedBox(
            height: 151,
            width: 202,
            child: Image.asset("assets/images/book_library.png"),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Registration of Exam",
                  style: TextStyle(
                    fontFamily: AppTextStyle.textStyleMulish,
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    letterSpacing: -0.28,
                    color: AppColor.yellow29,
                  ),
                ),
                Text(
                  "Your Upcoming class will be on Sunday, on guitar tuning lesson on 12 PM-3 PM.",
                  style: TextStyle(
                    fontFamily: AppTextStyle.textStyleMulish,
                    fontSize: 10,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600,
                    color: AppColor.white255,
                  ),
                ),
                MaterialButton(
                  height: 30,
                  minWidth: 174,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(76.67),
                  ),
                  color: AppColor.yellow29,
                  onPressed: () {
                    Get.toNamed(AppRoutes.examRegistrationPage);
                  },
                  child: Text(
                    "Register Now",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleMulish,
                      fontSize: 12,
                      color: AppColor.white255,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _classesRemaining() {
    return Container(
      width: double.infinity,
      height: 406,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      // padding: const EdgeInsets.symmetric(vertical: 3),
      decoration: BoxDecoration(
        color: AppColor.white255,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Classes Attended",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      myProfileModel.user!.classesAttended.toString(),
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: AppColor.yellow29,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 67,
                  width: 1,
                  color: AppColor.black.withOpacity(0.3),
                ),
                Column(
                  children: [
                    Text(
                      "Uninformed/Late",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      myProfileModel.user!.late.toString(),
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: AppColor.yellow29,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: AppColor.black.withOpacity(0.3),
            height: 1,
          ),
          4.h.heightBox,
          SizedBox(
            height: 150,
            width: 150,
            child: CircleProgressBar(
              foregroundColor: Colors.blue,
              backgroundColor: Colors.black12,
              strokeWidth: 20,
              value: 0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    myProfileModel.user!.classesRemaining.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColor.yellow29,
                    ),
                  ),
                  Text(
                    "Classes\nRemaining",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStylePoppins,
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w800,
                    ),
                  )
                ],
              ),
            ),
          ),
          2.h.heightBox,
          Stack(
            children: [
              MaterialButton(
                color: AppColor.yellow29,
                height: 31,
                minWidth: 176,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36),
                ),
                onPressed: () {
                  DiloagBox.coverClassDiloagBox();
                },
                child: Text(
                  "apply for Cover Class",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: AppTextStyle.textStyleMulish,
                    fontSize: 11,
                    color: AppColor.white255,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: 5,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.blue224,
                    border: Border.all(color: AppColor.white255, width: 2),
                  ),
                ),
              ),
            ],
          ),
          1.6.h.heightBox,
          Container(
            width: double.infinity,
            color: AppColor.black.withOpacity(0.3),
            height: 1,
            margin: const EdgeInsets.only(top: 10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      "Approved Leave",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      myProfileModel.user!.approvedLeave.toString(),
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: AppColor.yellow29,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 67,
                width: 1,
                color: AppColor.black.withOpacity(0.3),
              ),
              Expanded(
                child: Container(
                  height: 66,
                  decoration: BoxDecoration(
                    color: AppColor.black.withOpacity(0.1),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Classes Consumed",
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStyleMulish,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        myProfileModel.user!.classesConsumed.toString(),
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: AppColor.yellow29,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Align _bottomSheetBtn() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: MaterialButton(
                color: AppColor.blue224,
                height: 60,
                minWidth: 170,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36),
                ),
                onPressed: () {
                  controller.leaveDiloagBox();
                },
                child: Text(
                  "Apply Leave",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: AppTextStyle.textStyleMulish,
                    fontSize: 20,
                    color: AppColor.white255,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            2.w.widthBox,
            Expanded(
              child: MaterialButton(
                color: AppColor.blue224,
                height: 60,
                minWidth: 170,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36),
                ),
                onPressed: () {
                  Get.dialog(const RescheduleDiloagBox());
                },
                child: Text(
                  "Reschedule ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: AppTextStyle.textStyleMulish,
                    fontSize: 20,
                    color: AppColor.white255,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _feesTimeCalender() {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: SvgPicture.asset(
              "assets/svg/calender_time.svg",
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              margin: const EdgeInsets.only(left: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Current Fee Band",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 12,
                        color: AppColor.white255.withOpacity(0.5),
                        fontWeight: FontWeight.w900,
                      ),
                      children: [
                        TextSpan(
                          text: " :\tBeginner",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 14,
                            color: AppColor.white255,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: "\t(Grade 1)",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 10,
                            color: AppColor.white255,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  1.5.h.heightBox,
                  RichText(
                    text: TextSpan(
                      text: "Music Board",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 12,
                        color: AppColor.white255.withOpacity(0.5),
                        fontWeight: FontWeight.w900,
                      ),
                      children: [
                        TextSpan(
                          text: " :\tTrinity College London",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 14,
                            color: AppColor.white255,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  1.5.h.heightBox,
                  RichText(
                    text: TextSpan(
                      text: "Classes credited :",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        color: AppColor.white255,
                        fontWeight: FontWeight.w900,
                      ),
                      children: [
                        TextSpan(
                          text: myProfileModel.user!.classCredited.toString(),
                          style: TextStyle(
                            fontSize: 24,
                            fontStyle: FontStyle.normal,
                            color: AppColor.blue224,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  1.5.h.heightBox,
                  RichText(
                    text: TextSpan(
                      text: "Next Payment Due Date",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 10,
                        color: AppColor.white255.withOpacity(0.5),
                        fontWeight: FontWeight.w700,
                      ),
                      children: [
                        TextSpan(
                          text: " :\t15 May 2022",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 12,
                            color: AppColor.white255,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  1.5.h.heightBox,
                  RichText(
                    text: TextSpan(
                      text: "Last Payment Received",
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 10,
                        color: AppColor.white255.withOpacity(0.5),
                        fontWeight: FontWeight.w700,
                      ),
                      children: [
                        TextSpan(
                          text: " :\t15 Mar 2022",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 12,
                            color: AppColor.white255,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  1.5.h.heightBox,
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "Due Date",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 10,
                            color: AppColor.white255.withOpacity(0.5),
                            fontWeight: FontWeight.w700,
                          ),
                          children: [
                            TextSpan(
                              text: " :\t15 Mar 2022",
                              style: TextStyle(
                                fontFamily: AppTextStyle.textStyleMulish,
                                fontSize: 12,
                                color: AppColor.white255,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      4.w.widthBox,
                      MaterialButton(
                        minWidth: 48.17,
                        height: 17,
                        color: AppColor.yellow29,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.2),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Pay Now",
                          style: TextStyle(
                            fontFamily: AppTextStyle.textStyleMulish,
                            fontSize: 8,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: AppColor.white255,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
              height: 200,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(
                    controller.feesPayList.length,
                    (index) => _paymentDate(
                      text: controller.feesPayList[index]['date'],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }

  Container _paymentDate({
    String? text,
  }) {
    return Container(
      width: text == '' ? 20 : 50,
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColor.white255,
          ),
        ),
      ),
      child: Text(
        "$text",
        style: TextStyle(
          fontFamily: AppTextStyle.textStyleMulish,
          fontSize: 6,
          color: AppColor.white255,
        ),
      ),
    );
  }

  _header() {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, top: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Good morning  ",
                  style: TextStyle(
                    fontFamily: AppTextStyle.textStyleMulish,
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                  ),
                  children: [
                    TextSpan(
                      text:myProfileModel.user!.name,
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 20,
                        color: AppColor.blue224,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                "assets/images/music_logo.png",
                height: 40,
                width: 40,
              )
            ],
          ),
          1.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.parentProfilePage);
                },
                child:  SizedBox(
                  height: 55,
                  width: 55,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                     myProfileModel.user!.profilePicture.toString(),
                    ),
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 41,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: AppColor.white255,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: AppColor.blue224,
                    ),
                    Text(
                      "Noida, sector 142",
                      style: TextStyle(
                        color: AppColor.white255,
                        fontFamily: AppTextStyle.textStyleRaleway,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        size: 18,
                        color: AppColor.blue224,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.notificationTemplate);
                },
                child: Container(
                  height: 41,
                  width: 41,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColor.white255,
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    children: [
                      Icon(
                        Icons.notifications_none_rounded,
                        color: AppColor.black,
                        size: 30,
                      ),
                      Positioned(
                        top: 3,
                        right: 5,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.blue224,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  _myMusicClass({
    void Function()? onTap,
    String? imagePath,
    String? text,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 184,
        margin: const EdgeInsets.symmetric(horizontal: 30),
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

  void getAllCourses() async {
    final authRepository = AuthRepository();
    final response = await authRepository.allCoursesApi();
    debugPrint(response.toString());
    allCoursesModel = AllCoursesModel.fromJson(response);
    setState(() {
      // allInstrumentList = getInstrumentModel.subjects!;
      // print(allInstrumentList.length);
    });
  }
  void getMyProfile() async {
    final authRepository = AuthRepository();
    final response = await authRepository.myProfileApi();
    debugPrint(response.toString());
    myProfileModel =
    MyProfileModel.fromJson(response);
    setState(() {
      // allInstrumentList = getInstrumentModel.subjects!;
      // print(allInstrumentList.length);
    });
  }
}

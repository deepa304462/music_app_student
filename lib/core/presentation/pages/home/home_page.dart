import 'dart:convert';

import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/config/routes/app_routes.dart';
import 'package:music_app_student/core/presentation/pages/diloag_box.dart/diloag_box.dart';
import 'package:music_app_student/core/presentation/pages/home/controller/home_controller.dart';
import 'package:music_app_student/core/presentation/pages/progress/guitar_progress_page.dart';
import 'package:music_app_student/core/presentation/pages/progress/piano_progress_page.dart';
import 'package:music_app_student/core/presentation/pages/reschedule_diloagBox_view/rescheduale_diloag_box.dart';
import 'package:music_app_student/core/presentation/widgets/custom_text_field.dart';
import 'package:music_app_student/models/all_caurses_model.dart';
import 'package:music_app_student/models/apply_cover_class_model.dart';
import 'package:music_app_student/models/apply_leave_model.dart';
import 'package:music_app_student/models/my_profile_model.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../models/get_time_slots_model.dart';
import '../../../../repository/auth_repository.dart';
import '../../../utils/utils.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Get.put(HomeController());
  MyProfileModel myProfileModel = MyProfileModel();
  AllCoursesModel allCoursesModel = AllCoursesModel();
  TextEditingController reasonController = TextEditingController();
  TextEditingController leaveStartDateForController = TextEditingController();
  TextEditingController leaveEndDateForController = TextEditingController();
  TextEditingController descriptionRegardingController = TextEditingController();
  TextEditingController _coverClassDateController = TextEditingController();
  TextEditingController _coverClassTimeController = TextEditingController();
  bool _isLoading = false;
  GetTimeSlotsModel? getTimeSlotsModel;
  TimeClasses? selectedFirstTimeSlot;

  @override
  void initState() {
    getAllCourses();
    getMyProfile();
    getTimeSlots("652e78d277a46405ef44492f");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (context) {
      return Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: myProfileModel.user == null
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
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
                  coverClassDiloagBox();
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
                  showApplyLeaveDialog();
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
                      text: myProfileModel.user!.name,
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
                child: SizedBox(
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
    myProfileModel = MyProfileModel.fromJson(response);
    setState(() {
      // allInstrumentList = getInstrumentModel.subjects!;
      // print(allInstrumentList.length);
    });
  }

  void showApplyLeaveDialog() {
    Get.dialog(Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 480,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: AppColor.white255,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              2.h.heightBox,
              Text(
                "Leave",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: AppTextStyle.textStyleMulish,
                  fontSize: 24,
                  color: AppColor.black,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomTextField(
                controller: reasonController,
                hintText: "Reason...",
              ),
              CustomTextField(
                controller: leaveStartDateForController,
                hintText: "start Date for Leave",
                suffixIcon: IconButton(
                  onPressed: () {
                    _selectStartDate();
                  },
                  icon: SvgPicture.asset("assets/svg/calender.svg"),
                ),
              ),
              CustomTextField(
                controller: leaveEndDateForController,
                hintText: "End Date for Leave",
                suffixIcon: IconButton(
                  onPressed: () {
                    _selectEndDate();
                  },
                  icon: SvgPicture.asset("assets/svg/calender.svg"),
                ),
              ),
              CustomTextField(
                controller: descriptionRegardingController,
                height: 80,
                maxLines: 4,
                hintText: "Description regarding Leave...",
              ),
              2.h.heightBox,
              MaterialButton(
                color: AppColor.blue224,
                height: 51,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                minWidth: 294,
                onPressed: () {
                  onTapSubmitForLeave();
                },
                child: Text(
                  "Submit",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: AppTextStyle.textStyleMulish,
                    fontSize: 24,
                    color: AppColor.white255,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  onTapSubmitForLeave() async {
    setState(() {
      _isLoading = false;
    });
    // Utils.showNonDismissibleLoadingDialog(
    //     context, 'Please wait...', 'Loading...');
    Map<String, dynamic> data = {
      'reason': reasonController.text,
      'startDate': leaveStartDateForController.text,
      "endDate": leaveEndDateForController.text,
      'description': descriptionRegardingController.text,
    };
    print(jsonEncode(data));
    final authRepository = AuthRepository();
    final response = await authRepository.applyLeaveApi(data);
    ApplyLeaveModel applyLeaveModel = ApplyLeaveModel.fromJson(response);
    print("registerFormModel.id");
    print(response);
    print("registerFormModel.id");
    print(applyLeaveModel.msg);
    print("registerFormModel.id");
    if (applyLeaveModel.leave != null) {
      Utils.toastMassage("Leave applied successfully");
      setState(() {
        _isLoading = false;
      });
      Navigator.pop(context);
    } else {
      Utils.toastMassage(response!['error']);
      // Navigator.pop(context);
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _selectStartDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      // Set your desired starting date
      lastDate: DateTime.now(),
      // You can customize date picker appearance here if needed
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            primaryColor: Colors.blue, // Set the primary color
            hintColor: Colors.blue, // Set the accent color
            // You can customize other date picker styles here
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      // Create a DateFormat for the input date format
      final inputFormat = DateFormat("EEE MMM dd y");

      // Format the picked date in the desired format
      String formattedDate = inputFormat.format(picked);

      print(formattedDate);

      // Update the text field with the formatted date
      setState(() {
        leaveStartDateForController.text = formattedDate;
      });
    }
  }

  void _selectEndDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      // Set your desired starting date
      lastDate: DateTime(2030),
      // You can customize date picker appearance here if needed
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            primaryColor: Colors.blue, // Set the primary color
            hintColor: Colors.blue, // Set the accent color
            // You can customize other date picker styles here
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      // Create a DateFormat for the input date format
      final inputFormat = DateFormat("EEE MMM dd y");

      // Format the picked date in the desired format
      String formattedDate = inputFormat.format(picked);

      print(formattedDate);

      // Update the text field with the formatted date
      setState(() {
        leaveEndDateForController.text = formattedDate;
      });
    }
  }
  void _selectCoverClassDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      // Set your desired starting date
      lastDate: DateTime(2030),
      // You can customize date picker appearance here if needed
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            primaryColor: Colors.blue, // Set the primary color
            hintColor: Colors.blue, // Set the accent color
            // You can customize other date picker styles here
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      // Create a DateFormat for the input date format
      final inputFormat = DateFormat("y-MM-dd");

      // Format the picked date in the desired format
      String formattedDate = inputFormat.format(picked);

      print(formattedDate);

      // Update the text field with the formatted date
      setState(() {
        _coverClassDateController.text = formattedDate;
      });
    }
  }

  void coverClassDiloagBox() {
     Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: SizedBox(
          height: 333,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: Column(
                 children: [
                   CustomTextField(
                     controller: _coverClassDateController,
                     hintText: "Date of class",
                     suffixIcon: IconButton(
                       onPressed: () {
                         _selectCoverClassDate();
                       },
                       icon: SvgPicture.asset("assets/svg/calender.svg"),
                     ),
                   ),
                   3.h.heightBox,
                   Container(
                     height: 56,
                     decoration: BoxDecoration(
                         border: Border.all(color: Colors.black),
                         borderRadius: BorderRadius.circular(10)),
                     child:  DropdownButtonFormField<TimeClasses>(
                       decoration: InputDecoration(
                           border: OutlineInputBorder(
                             borderRadius:
                             BorderRadius.circular(10.0), // Rounded border
                             borderSide: BorderSide.none, // No border side
                           ),
                           contentPadding:
                           const EdgeInsets.only(bottom: 8, left: 8),
                           suffixIcon: const Icon(
                             Icons.arrow_drop_down,
                             color: Colors.black,
                           ),
                           hintText: 'Select to schedule',
                           hintStyle: TextStyle(
                             fontFamily: AppTextStyle.textStyleMulish,
                             fontWeight: FontWeight.w600,
                             fontSize: 16,
                             fontStyle: FontStyle.italic,
                             color: AppColor.black,
                           )),
                       value: selectedFirstTimeSlot,
                       style: TextStyle(
                         fontFamily: AppTextStyle.textStyleMulish,
                         fontWeight: FontWeight.w600,
                         fontSize: 16,
                         fontStyle: FontStyle.italic,
                         color: AppColor.black,
                       ),
                       iconSize: 0,
                       elevation: 16,
                       onChanged: (TimeClasses? newValue) {
                         setState(() {
                           selectedFirstTimeSlot = newValue;
                           print("selectedTimeSlot!.id");
                           print(selectedFirstTimeSlot!.id);
                           print("selectedTimeSlot!.id");
                         });
                       },
                       items: getTimeSlotsModel?.classes!
                           .map<DropdownMenuItem<TimeClasses>>((TimeClasses? value) {
                         return DropdownMenuItem<TimeClasses>(
                             value: value, child: Text(value!.time!.slot.toString()));
                       }).toList(),
                       dropdownColor: Colors.grey.shade800,
                       borderRadius: BorderRadius.circular(16),
                       hint:  Text(
                           "Select to schedule",
                           style: TextStyle(
                             fontFamily: AppTextStyle.textStyleMulish,
                             fontWeight: FontWeight.w600,
                             fontSize: 16,
                             fontStyle: FontStyle.italic,
                             color: AppColor.black,
                           )
                       ),
                     ),
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
                onPressed: () {
                  onTapSubmitForCoverClass();
                },
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
  onTapSubmitForCoverClass() async {
    setState(() {
      _isLoading = false;
    });
    // Utils.showNonDismissibleLoadingDialog(
    //     context, 'Please wait...', 'Loading...');
    Map<String, dynamic> data = {
      'date': _coverClassDateController.text,
      'time': selectedFirstTimeSlot,
    };
    print(jsonEncode(data));
    final authRepository = AuthRepository();
    final response = await authRepository.applyCoverClassApi(data);
    ApplyCoverClassModel applyCoverClassModel = ApplyCoverClassModel.fromJson(response);
    print("registerFormModel.id");
    print(response);
    print("registerFormModel.id");
    print(applyCoverClassModel.date);
    print("registerFormModel.id");
    if (applyCoverClassModel.date != null) {
      Utils.toastMassage("Cover class applied successfully");
      setState(() {
        _isLoading = false;
      });
      Navigator.pop(context);
    } else {
      Utils.toastMassage(response!['error']);
      // Navigator.pop(context);
      setState(() {
        _isLoading = false;
      });
    }
  }

  void getTimeSlots(String teacherId) async {
    final authRepository = AuthRepository();
    final response = await authRepository.getTimeSlots(teacherId);

    debugPrint(response.toString());
    getTimeSlotsModel = GetTimeSlotsModel.fromJson(response);
    print("response");
    print(response);
    print("response");
    setState(() {

      getTimeSlotsModel = GetTimeSlotsModel.fromJson(response);

    });
  }

}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/models/get_all_teacher_modol.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class TeacherProfilePage extends StatefulWidget {
  final Teachers teacher;
  final List<Teachers> listOfTeachers;

  const TeacherProfilePage(
      {super.key, required this.teacher, required this.listOfTeachers,});

  @override
  State<TeacherProfilePage> createState() => _TeacherProfilePageState();
}

class _TeacherProfilePageState extends State<TeacherProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _header(),
            4.h.heightBox,
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
                  Text(
                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStyleInter,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: MaterialButton(
                color: AppColor.blue224,
                height: 60,
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36),
                ),
                onPressed: () {
                  for (var teacher in widget.listOfTeachers) {
                    if (teacher.isSelected!) {
                      teacher.isSelected = false;
                    }
                  }
                  widget.teacher.isSelected = true;
                  Navigator.pop(context, true,);
                  },
                child: Text(
                  "Select",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: AppTextStyle.textStyleMulish,
                    fontSize: 24,
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

  SizedBox _header() {
    return SizedBox(
      height: 350,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: 270,
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
              height: 190,
              alignment: Alignment.center,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColor.white255,
              ),
              child: Column(
                children: [
                  8.h.heightBox,
                  Text(
                    widget.teacher.name.toString(),
                    style: TextStyle(
                      fontFamily: AppTextStyle.textStylePoppins,
                      fontSize: 17.85,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: AppColor.blue224,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: AppColor.white255,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          VxRating(
                            value: 1,
                            count: 1,
                            selectionColor: AppColor.yellow,
                            onRatingUpdate: (value) {},
                            size: 18,
                          ),
                          1.w.widthBox,
                          Row(
                            children: [
                              Text(
                                widget.teacher.rating.toString(),
                                style: TextStyle(
                                  color: AppColor.black29,
                                  fontFamily: AppTextStyle.textStyleMulish,
                                  fontSize: 15.36,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.43,
                                ),
                              ),
                              Text(
                                "(1000)",
                                style: TextStyle(
                                  color: AppColor.black29,
                                  fontFamily: AppTextStyle.textStyleMulish,
                                  fontSize: 15.36,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.43,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: AppColor.blue224,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: AppColor.white255,
                          ),
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
                          children:  [
                            TextSpan(
                              text: widget.teacher.experience.toString(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 130,top: 80),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColor.blue224, width: 5),
              ),
              child: SizedBox(
                height: 120,
                width: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Image.network(
                      widget.teacher.profilePicture.toString(),
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

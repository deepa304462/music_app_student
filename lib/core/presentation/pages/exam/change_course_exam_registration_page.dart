import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/exam/controller/change_course_exam_registration_controller.dart';
import 'package:music_app_student/core/presentation/widgets/text_form_field_view.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ChangeCourseExamRegistrationPage extends StatelessWidget {
  ChangeCourseExamRegistrationPage({super.key});
  final controller = Get.put(ChangeCourseExamRegistrationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _appBar(),
            Container(
              margin: const EdgeInsets.only(top: 40, right: 16, left: 16),
              child: Form(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/profile.png",
                      height: 115,
                      width: 115,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Flex(
                        direction: Axis.vertical,
                        children: [
                          4.h.heightBox,
                          TextFormFieldView(
                            controller: controller.nameController,
                            hintText: "Full Name",
                          ),
                          2.h.heightBox,
                          TextFormFieldView(
                            controller: controller.emailController,
                            hintText: "Email",
                          ),
                          2.h.heightBox,
                          TextFormFieldView(
                            controller: controller.genderController,
                            hintText: "Gender",
                          ),
                          2.h.heightBox,
                          TextFormFieldView(
                            controller: controller.currentInstrumentController,
                            hintText: "Current Instrument",
                            suffixIcon: InkWell(
                              child: Icon(
                                Icons.arrow_drop_down_sharp,
                                color: AppColor.white255,
                              ),
                            ),
                          ),
                          2.h.heightBox,
                          TextFormFieldView(
                            controller: controller.currentSkillLevelController,
                            hintText: "Current Skill level",
                          ),
                          2.h.heightBox,
                          TextFormFieldView(
                            controller: controller.genderController,
                            hintText: "Current Grade",
                          ),
                          2.h.heightBox,
                          TextFormFieldView(
                            controller: controller.selectInstrumentController,
                            hintText: "Select Instrument",
                            suffixIcon: InkWell(
                              child: Icon(
                                Icons.arrow_drop_down_sharp,
                                color: AppColor.white255,
                              ),
                            ),
                          ),
                          6.h.heightBox,
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(36),
                            ),
                            color: AppColor.blue224,
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: () {
                              // log(controller.nameController.toString());
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
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _appBar() {
    return Container(
      margin: const EdgeInsets.only(top: 50, right: 16, left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: AppColor.white255,
            ),
          ),
          Text(
            "Exam Registration",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: AppTextStyle.textStyleMulish,
              fontSize: 20,
              color: AppColor.white255,
              fontWeight: FontWeight.w900,
              letterSpacing: -0.28,
            ),
          ),
          const SizedBox()
        ],
      ),
    );
  }
}

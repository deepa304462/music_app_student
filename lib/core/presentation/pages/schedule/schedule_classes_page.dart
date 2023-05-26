import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/config/routes/app_routes.dart';
import 'package:music_app_student/core/presentation/pages/schedule/controller/schedule_classes_controller.dart';
import 'package:music_app_student/core/presentation/widgets/custom_appbar.dart';

import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ScheduleClassesPage extends StatelessWidget {
  ScheduleClassesPage({super.key});
  final controller = Get.put(ScheduleClassesController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ScheduleClassesController>(builder: (context) {
      return Scaffold(
        appBar: CustomAppBar(
          onBackPressed: () {},
          centerTitle: true,
          title: "Schedule Classes",
          fontFamily: AppTextStyle.textStyleMulish,
          fontWeight: FontWeight.w900,
          fontSize: 20,
        ),
        body: Column(
          children: [
            Text(
              "Select teacher",
              style: TextStyle(
                fontFamily: AppTextStyle.textStyleMulish,
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: AppColor.white255,
                letterSpacing: -0.28,
              ),
            ),
            2.h.heightBox,
            _selectedTeacherHorizontal(),
            3.h.heightBox,
            Text(
              "Select Day and time",
              style: TextStyle(
                fontFamily: AppTextStyle.textStyleMulish,
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: AppColor.white255,
                letterSpacing: -0.28,
              ),
            ),
            2.h.heightBox,
            Container(
              height: 35,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColor.white255,
                ),
              ),
              child: DropdownButton(
                dropdownColor: AppColor.appThemeColor,
                underline: const SizedBox(),
                elevation: 0,
                borderRadius: BorderRadius.circular(20),
                isExpanded: true,
                icon: Icon(
                  Icons.arrow_drop_down_outlined,
                  color: AppColor.white255,
                ),
                hint: Text(
                  "1st class Day",
                  style: TextStyle(
                    color: AppColor.white255,
                    fontFamily: AppTextStyle.textStylePoppins,
                    fontSize: 15.38,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onChanged: controller.onChangeDayItem,
                value: controller.dayDropdownvalue,
                items: controller.daysItems
                    .map(
                      (text) => DropdownMenuItem(
                        value: text,
                        child: Text(
                          text,
                          style: TextStyle(
                            color: AppColor.white255,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            2.h.heightBox,
            Container(
              height: 35,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColor.white255,
                ),
              ),
              child: DropdownButton(
                dropdownColor: AppColor.appThemeColor,
                underline: const SizedBox(),
                elevation: 0,
                borderRadius: BorderRadius.circular(20),
                isExpanded: true,
                icon: Icon(
                  Icons.arrow_drop_down_outlined,
                  color: AppColor.white255,
                ),
                hint: Text(
                  "1st class Day",
                  style: TextStyle(
                    color: AppColor.white255,
                    fontFamily: AppTextStyle.textStylePoppins,
                    fontSize: 15.38,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onChanged: controller.onChangeTimeItem,
                value: controller.timeDropdownvalue,
                items: controller.timeItems
                    .map(
                      (text) => DropdownMenuItem(
                        value: text,
                        child: Text(
                          text,
                          style: TextStyle(
                            color: AppColor.white255,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            4.h.heightBox,
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Divider(
                color: AppColor.white255,
              ),
            ),
            2.h.heightBox,
            Container(
              height: 35,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColor.white255,
                ),
              ),
              child: DropdownButton(
                dropdownColor: AppColor.appThemeColor,
                underline: const SizedBox(),
                elevation: 0,
                borderRadius: BorderRadius.circular(20),
                isExpanded: true,
                icon: Icon(
                  Icons.arrow_drop_down_outlined,
                  color: AppColor.white255,
                ),
                hint: Text(
                  "1st class Day",
                  style: TextStyle(
                    color: AppColor.white255,
                    fontFamily: AppTextStyle.textStylePoppins,
                    fontSize: 15.38,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onChanged: controller.onChangeDayItem_2,
                value: controller.dayDropdownvalue_2,
                items: controller.daysItems_2
                    .map(
                      (text) => DropdownMenuItem(
                        value: text,
                        child: Text(
                          text,
                          style: TextStyle(
                            color: AppColor.white255,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            2.h.heightBox,
            Container(
              height: 35,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColor.white255,
                ),
              ),
              child: DropdownButton(
                dropdownColor: AppColor.appThemeColor,
                underline: const SizedBox(),
                elevation: 0,
                borderRadius: BorderRadius.circular(20),
                isExpanded: true,
                icon: Icon(
                  Icons.arrow_drop_down_outlined,
                  color: AppColor.white255,
                ),
                hint: Text(
                  "1st class Day",
                  style: TextStyle(
                    color: AppColor.white255,
                    fontFamily: AppTextStyle.textStylePoppins,
                    fontSize: 15.38,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onChanged: controller.onChangeTimeItem_3,
                value: controller.timeDropdownvalue_3,
                items: controller.timeItems_3
                    .map(
                      (text) => DropdownMenuItem(
                        value: text,
                        child: Text(
                          text,
                          style: TextStyle(
                            color: AppColor.white255,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            20.h.heightBox,
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: MaterialButton(
                color: AppColor.blue224,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36),
                ),
                height: 60,
                minWidth: double.infinity,
                onPressed: () {
                  controller.studentDiloagBox();
                },
                child: Text(
                  "Register",
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
            ),
          ],
        ),
      );
    });
  }

  SizedBox _selectedTeacherHorizontal() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.toNamed(AppRoutes.teacherProfilePage);
            },
            child: Container(
              height: 170,
              width: 180,
              margin: const EdgeInsets.only(left: 10),
              child: Stack(
                children: [
                  Container(
                    width: 172,
                    height: 83.33,
                    margin: const EdgeInsets.only(
                      top: 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.67),
                      border: Border.all(
                        color: AppColor.white255,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 59,
                          width: 59,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.33),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/teacher.png"),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                maxLines: 2,
                                text: TextSpan(
                                  text: "Andy Raj",
                                  style: TextStyle(
                                    fontFamily: AppTextStyle.textStyleMulish,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 13.33,
                                    color: AppColor.white255,
                                  ),
                                  children: const [
                                    TextSpan(text: "\n"),
                                    TextSpan(text: "Kapoor"),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  VxRating(
                                    onRatingUpdate: (value) {},
                                    value: 1,
                                    size: 10,
                                    count: 1,
                                    selectionColor: AppColor.yellow,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: "4.5",
                                      style: TextStyle(
                                        fontFamily:
                                            AppTextStyle.textStyleMulish,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 5.7,
                                        color: AppColor.white255,
                                        letterSpacing: -0.16,
                                      ),
                                      children: const [
                                        TextSpan(text: "(1000)"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/guitar_red.png",
                                    height: 16.67,
                                    width: 16.28,
                                  ),
                                  1.w.widthBox,
                                  RichText(
                                    text: TextSpan(
                                      text: "Exp:",
                                      style: TextStyle(
                                          fontFamily:
                                              AppTextStyle.textStyleMulish,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 8.33,
                                          color: AppColor.white255,
                                          letterSpacing: -0.23),
                                      children: const [
                                        TextSpan(text: " 10 Years"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  index == 0
                      ? Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 24,
                            width: 24,
                            margin: const EdgeInsets.only(right: 2, top: 2),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.green63,
                            ),
                            child: Icon(
                              Icons.check,
                              size: 20,
                              color: AppColor.white255,
                            ),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

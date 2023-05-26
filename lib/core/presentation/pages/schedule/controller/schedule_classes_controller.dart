import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/config/routes/app_routes.dart';
import 'package:music_app_student/core/presentation/pages/parent_register_profile/parent_register_profile_page.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ScheduleClassesController extends GetxController {
  String dayDropdownvalue = 'Tuesday';
  String timeDropdownvalue = '12:00 to 13:00';
  String dayDropdownvalue_2 = 'Tuesday';
  String timeDropdownvalue_3 = '12:00 to 13:00';

  // List of items in our dropdown menu
  var daysItems = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];
  onChangeDayItem(dynamic value) {
    dayDropdownvalue = value;
    update();
  }

  var timeItems = [
    '12:00 to 13:00',
    '13:00 to 14:00',
    '14:00 to 15:00',
    '15:00 to 16:00',
    '16:00 to 17:00',
    '17:00 to 18:00',
    '18:00 to 19:00',
  ];
  onChangeTimeItem(dynamic value) {
    timeDropdownvalue = value;
    update();
  }

  var daysItems_2 = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];
  onChangeDayItem_2(dynamic value) {
    dayDropdownvalue_2 = value;
    update();
  }

  var timeItems_3 = [
    '12:00 to 13:00',
    '13:00 to 14:00',
    '14:00 to 15:00',
    '15:00 to 16:00',
    '16:00 to 17:00',
    '17:00 to 18:00',
    '18:00 to 19:00',
  ];
  onChangeTimeItem_3(dynamic value) {
    timeDropdownvalue_3 = value;
    update();
  }

  studentDiloagBox() {
    update();
    return Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 430,
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) => Container(
                  height: 60,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: AppColor.black29)),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColor.black29,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: SvgPicture.asset("assets/svg/person.svg"),
                      ),
                      4.w.widthBox,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Student 1",
                            style: TextStyle(
                              fontFamily: AppTextStyle.textStyleMulish,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: AppColor.black29,
                            ),
                          ),
                          Text(
                            "21 years Old",
                            style: TextStyle(
                              fontFamily: AppTextStyle.textStyleMulish,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: AppColor.black29,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              2.h.heightBox,
              MaterialButton(
                height: 60,
                minWidth: double.infinity,
                color: AppColor.blue224,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36),
                ),
                onPressed: () {
                  addAnotherStudentDiloagBox();
                },
                child: Text(
                  "Done",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: AppTextStyle.textStyleMulish,
                    fontSize: 24,
                    color: AppColor.white255,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              2.h.heightBox,
              MaterialButton(
                height: 60,
                minWidth: double.infinity,
                color: AppColor.blue224,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36),
                ),
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  "Change",
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

  addAnotherStudentDiloagBox() {
    update();
    return Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 430,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 200,
                child: Image.asset("assets/images/circle_animated_gif.gif"),
              ),
              Column(
                children: [
                  MaterialButton(
                    height: 60,
                    minWidth: double.infinity,
                    color: AppColor.blue224,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(
                      "Add Another Student",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 24,
                        color: AppColor.white255,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  2.h.heightBox,
                  MaterialButton(
                    height: 60,
                    minWidth: double.infinity,
                    color: AppColor.blue224,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                    onPressed: () {},
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
            ],
          ),
        ),
      ),
    );
  }
}

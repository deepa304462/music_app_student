import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/config/routes/app_routes.dart';
import 'package:music_app_student/core/presentation/pages/diloag_box.dart/diloag_box.dart';
import 'package:music_app_student/core/presentation/widgets/custom_material_button.dart';
import 'package:music_app_student/core/presentation/widgets/custom_text_field.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeController extends GetxController {
  TextEditingController reasonController = TextEditingController();
  TextEditingController startDateForLeaveController = TextEditingController();
  TextEditingController endDateController = TextEditingController();

  TextEditingController endDateForLeaveController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  List feesPayList = [
    {
      "date": "15 mar. 2022",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "15 mar. 2022",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "15 mar. 2022",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "15 mar. 2022",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "",
    },
    {
      "date": "15 mar. 2022",
    },
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // showDatePickView();
    animatedBox();
  }

  var dateRange = DateTimeRange(
          start: DateTime.now(),
          end: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 6))
      .obs;
  showDatePickView() async {
    DateTimeRange? picker = await showDateRangePicker(
      context: Get.context!,
      firstDate: DateTime(DateTime.now().year),
      lastDate: DateTime(DateTime.now().year + 20),
      initialDateRange: dateRange.value,
    );
    if (picker != null && picker != dateRange.value) {
      dateRange.value = picker;
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  animatedBox() {
    Timer(
      const Duration(
        seconds: 2,
      ),
      () {
        showPopupDialogBox();
      },
    );
  }

  showPopupDialogBox() {
    return Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.topCenter,
        child: Container(
            height: 131,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.white255,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "11:00 Am",
                          style: TextStyle(
                            color: AppColor.black29,
                            fontFamily: AppTextStyle.textStyleInter,
                            fontSize: 13.46,
                            fontWeight: FontWeight.w800,
                          ),
                          children: const [
                            TextSpan(text: "\tto\t"),
                            TextSpan(text: "12:00 Am"),
                          ],
                        ),
                      ),
                      Text(
                        "Class Level : Level 8",
                        style: TextStyle(
                          fontFamily: AppTextStyle.textStyleMulish,
                          fontSize: 12.56,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.21,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Total Students :",
                          style: TextStyle(
                            color: AppColor.black29,
                            fontFamily: AppTextStyle.textStyleInter,
                            fontSize: 12.56,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic,
                            letterSpacing: -0.21,
                          ),
                          children: const [
                            TextSpan(text: "\t"),
                            TextSpan(text: " 10 students"),
                          ],
                        ),
                      ),
                      CustomMaterialButton(
                        backgrounColor: AppColor.blue224,
                        minWidth: double.infinity,
                        color: AppColor.white255,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90),
                        ),
                        onPressed: () {
                          Get.toNamed(AppRoutes.joinClassPage);
                        },
                        title: "Join Now",
                        fontFamily: AppTextStyle.textStyleMulish,
                        fontSize: 14.36,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      )
                    ],
                  ),
                ),
                Image.asset(
                  "assets/images/guitar.png",
                  height: 81,
                  width: 80,
                ),
              ],
            )),
      ),
    );
  }

// Leave Diloag Box
  TextEditingController reasionController = TextEditingController();
  TextEditingController leaveStartDateForController = TextEditingController();
  TextEditingController leaveEndDateForController = TextEditingController();
  TextEditingController descriptionRegardingController =
      TextEditingController();

  leaveDiloagBox() {
    update();
    return Get.dialog(Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
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
              controller: reasionController,
              hintText: "Reason...",
            ),
            CustomTextField(
              controller: leaveStartDateForController,
              hintText: "start Date for Leave",
              suffixIcon: IconButton(
                onPressed: () {
                  DiloagBox.showDatePickerCalender();
                },
                icon: SvgPicture.asset("assets/svg/calender.svg"),
              ),
            ),
            CustomTextField(
              controller: leaveEndDateForController,
              hintText: "End Date for Leave",
              suffixIcon: IconButton(
                onPressed: () {
                  DiloagBox.showDatePickerCalender();
                },
                icon: SvgPicture.asset("assets/svg/calender.svg"),
              ),
            ),
            CustomTextField(
              height: 80,
              maxLines: 4,
              controller: descriptionRegardingController,
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
              onPressed: () {},
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
    ));
  }
}

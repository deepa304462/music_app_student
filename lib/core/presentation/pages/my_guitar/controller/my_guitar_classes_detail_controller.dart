import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';
import 'package:music_app_student/core/presentation/pages/diloag_box.dart/diloag_box.dart';
import 'package:music_app_student/core/presentation/widgets/custom_text_field.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class MyGuitarClassesDetailController extends GetxController {
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

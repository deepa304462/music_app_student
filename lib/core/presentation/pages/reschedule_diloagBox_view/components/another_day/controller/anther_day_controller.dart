import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_student/core/config/helpers/app_color.dart';
import 'package:music_app_student/core/config/helpers/app_test_style.dart';

class AnotherDayController extends GetxController {
  TextEditingController reasonController = TextEditingController();
  TextEditingController dateOfClassController = TextEditingController();
  TextEditingController rescheduleDateOfClassController =
      TextEditingController();
  TextEditingController selectedStudentsController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  Container dropDownFieldBtn({String? hintText, void Function()? onTap}) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColor.black,
        ),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          "$hintText",
          style: TextStyle(
            fontFamily: AppTextStyle.textStyleMulish,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic,
          ),
        ),
        InkWell(
          onTap: onTap,
          child: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColor.black29,
          ),
        )
      ]),
    );
  }
}
